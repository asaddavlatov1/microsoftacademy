<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Http\Request;

class CourceController extends Controller
{
    public function index()
    {
        $cources = Course::all();

        return view('firma.cource.index', compact('cources'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'month' => 'required',
            'comment' => 'required',
        ]);

        $add = Course::create([
            'name' => $request->name,
            'month' => $request->month,
            'comment' => $request->comment,
        ]);

        return redirect()->back();
    }
}
