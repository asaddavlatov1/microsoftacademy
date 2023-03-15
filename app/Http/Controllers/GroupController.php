<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\Group;
use Illuminate\Http\Request;

class GroupController extends Controller
{
    public function index()
    {
        $groups = Group::all();

        $cources = Course::all();

        return view('firma.group.index', compact('groups', 'cources'));
    }

    public function store(Request $request)
    {

        $request->validate([
            'course_id' => 'required',
            'name' => 'required',
            'start' => 'required',
            'end' => 'required',
        ]);

        // dd($request);


        $add = Group::create([
            'name' => $request->name,
            'cource_id' => $request->cource_id,
            'start' => $request->start,
            'end' => $request->end,
        ]);

        return redirect()->back();
    }


}
