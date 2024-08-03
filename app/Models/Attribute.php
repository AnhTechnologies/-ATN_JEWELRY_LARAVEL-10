<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Attribute extends Model
{
    protected $guarded = [''];

    public $type = [
        1 => [
            'name' => "Thương Hiệu",
            'class' => 'btn-xs btn-info' 
        ],
        2 => [
            'name' => 'Giới Tính',
            'class' => 'btn-xs btn-primary' 
        ],
        3 => [
            'name' => 'Bảo hành',
            'class' => 'btn-xs btn-danger' 
        ],
    ];

    public function getType()
    {
        return Arr::get($this->type, $this->atb_type,"[N\A]");
    }

    public static function getListType()
	{
		$that = new self();
		return $that->type;
	}

    public function category()
    {
        return $this->belongsTo(Category::class,'atb_category_id');
    }
}
