<?php

namespace App\Http\Controllers;

use App\Models\category;
use App\Models\product;
use App\Models\page;
use App\Models\slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $categories = category::all();
        $menu = page::where(['is_group'=>0,'is_active'=>1])->get();
        $submenu = page::where(['is_group'=>1,'is_active'=>1])->get();
        $appname = Config::get('app.name');
        $sliders = slider::all();

        $selectedCategoryId = $request->query('category');

        if ($selectedCategoryId) {
            $category = category::find($selectedCategoryId);
            $products = $category ? $category->products : collect(); // kosong jika tidak ketemu
        } else {
            $products = product::latest()->get();
        }

        return view('home', compact(
            'categories',
            'menu',
            'submenu',
            'appname',
            'sliders',
            'products'
        ));
    }
}
