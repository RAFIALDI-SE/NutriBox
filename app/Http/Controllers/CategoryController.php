<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function show($id)
    {
        $category = Category::findOrFail($id);
        $products = $category->products; // Relasi dari kategori ke produk

        return view('category_show', compact('category', 'products'));
    }
}
