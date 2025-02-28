<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;
use App\Models\Rating;
use App\Models\Product;
use App\Models\Transaction;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;


class UserRatingController extends Controller
{
    public function index()
    {
        $ratings = Rating::with('product:id,pro_name,pro_slug')
            ->where('r_user_id', get_data_user('web'))
            ->orderByDesc('id')
            ->paginate(10);
        
        $viewData = [
                'ratings' => $ratings,
                'title_page' => "Sản phẩm đã đánh giá"
        ];

        return view('user.rating', compact('ratings'), $viewData);
    }

    public function addRatingProduct(Request $request)
    {
        if ($request->ajax()) {
            $user = Auth::user();
            $productId = $request->product_id;
            

            // Kiểm tra xem khách hàng đã đặt sản phẩm hay chưa
            $order = Transaction::whereHas('orders', function ($query) use ($productId, $user) {
                $query->where('od_product_id', $productId)
                    ->where('tst_user_id', $user->id)->where('tst_status',3);
            })
            ->first();

            if (!$order) {
                return response()->json([
                    'message' => 'Bạn chưa mua sản phẩm này !',
                    'type' => 'error'
                ]);
            }


            $rating               = new Rating();
            $rating->r_user_id    = \Auth::id();
            $rating->r_product_id = $request->product_id;
            $rating->r_number     = $request->review;
            $rating->r_content    = $request->content_review;
            $rating->created_at   = Carbon::now();
            $rating->save();

            if ($rating->id) {
                $html = view('frontend.pages.product_detail.include._inc_rating_item', compact('rating'))->render();
                $this->staticRatingProduct($request->product_id, $request->review);
            }
            return response()->json([
                'html'     => $html ?? null,
                'message' => 'Đánh giá sản phẩm thành công',
                'type' => 'success'
            ]);
        }
    }

    public function delete()
    {
        $rating = Rating::where('r_user_id', get_data_user('web'))->first();

        if ($rating) {
            $product =  Product::find($rating->r_product_id);
            $product->pro_review_total--;
            $product->pro_review_star -= $rating->r_number;

            $product->save();

            if ($product->pro_review_total) {
                $product->pro_age_review = round($product->pro_review_star / $product->pro_review_total, 0);
                $product->save();
            }


            $rating->delete();
        }

        return redirect()->back();
    }

    public function staticRatingProduct($productID, $number)
    {
        $product =  Product::find($productID);
        $product->pro_review_total++;
        $product->pro_review_star += $number;
        $product->save();

        if ($product->pro_review_total) {
            $product->pro_age_review = round($product->pro_review_star / $product->pro_review_total, 0);
            $product->save();
        }
    }
}
