<?php
/**
 * author : Suryo Atmojo <suryoatm@gmail.com>
 * project : Belajar Laravel
 * Start-date : 1-02-2021
 */
namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class Product_model extends Model
{
    use HasFactory;
    protected $fillable = [
        'id_category_product','product', 'description'
    ];
}