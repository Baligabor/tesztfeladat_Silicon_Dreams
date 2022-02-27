<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $blogs = Blog::latest()->paginate(6);
        $tags = Tag::all();
        return view('index', compact(['blogs', 'tags']))->with(request()->input('page'));
    }
    public function filterOrder($dir)
    {
        $blogs = Blog::orderBy('updated_at', $dir)->paginate(6);
        $tags = Tag::all();
        if($dir == 'DESC')
        {
            $filterMessage = 'Blogok dátum szerint csökkenő sorrendben:';
        }
        else
        {
            $filterMessage = 'Blogok dátum szerint növekvő sorrendben:';
        }
        return view('index', compact(['blogs', 'tags', 'filterMessage']))->with(request()->input('page'));
    }
        /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function filterByTags(Request $request)
    {
        $request->validate([
            'blogtags' => 'required'
        ]);

        $blogIds = DB::table('blog_tags')
            ->select('blog_id')
            ->whereIn('tag_id', $_GET['blogtags'])
            ->distinct('blog_id')
            ->get();
        $selectedIds = [];
        $path = "?";
        $tagname = "";
        $blogCount = 0;
        foreach ($_GET['blogtags'] as $key => $value) {
           $path = $path.'blogtags%5B%5D='.$value.'&';
           $tag = DB::table('tags')->where('id',$value)->first();
           $tagname = $tagname.', '.$tag->name;
        }
        foreach($blogIds as $blogId)
        {
            array_push($selectedIds,$blogId->blog_id);

           $blogCount++;
        }
        $blogs = Blog::whereIn('id', $selectedIds)->paginate(6)->withpath($path);
        $tags = Tag::all();
        $filterMessage = $blogCount.' db Blog az alábbi cimké(k): '.substr($tagname,1).' szerint:';
        return view('index', compact(['blogs', 'tags', 'filterMessage']))->with(request()->input('page'));
    }

    public function addTags(){
        $count = DB::table('blog_tags')->count();
        if($count == 0)
        {
            $blogs = Blog::count();
            $tags = Tag::count();
            for ($i=1; $i <= $blogs ; $i++) {
                $tag_number = rand(1,4);
                for ($j=1; $j <= $tag_number; $j++) {
                    $tag_id = rand(1,$tags);
                    DB::insert('insert into blog_tags (blog_id, tag_id) values (?, ?)', [$i, $tag_id]);
                }
            }
            return redirect()->route('blogok.index')->with('success','Címkék sikeresen hozzáadva!');
        }
        else{
            return redirect()->route('blogok.index')->with('success','Címkék már generálva vannak!');
        }
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $tags = Tag::all();
        return view('create',compact('tags'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //Validate
        $request->validate([
            'author' => 'required|max:255',
            'title' => 'required|max:255',
            'description' => 'required',
            'blogtags' => 'required'
        ]);
        //Create
        $newBlog = Blog::create($request->all());
        //check tags
        $blogTags = $request->input('blogtags');
        foreach($blogTags as $key => $tagId){
            $tag = Tag::find($tagId);
            if(!isset($tag)){
                $newTag = new Tag();
                $newTag->name = $tagId;
                $newTag->save();
                $tagId = $newTag->id;
            }
            DB::insert('insert into blog_tags (blog_id, tag_id) values (?, ?)', [$newBlog->id, $tagId]);
        }



        return redirect()->route('blogok.index')->with('success','Új blog sikeresen hozzáadva!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $blog = Blog::find($id);
        return view('details', ['blog' => $blog]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $blog = Blog::find($id);
        $tags = Tag::all();
        //dd($blog->tags->toArray());
        return view('edit', ['blog' => $blog, 'tags' => $tags]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'author' => 'required|max:255',
            'title' => 'required|max:255',
            'description' => 'required',
            'blogtags' => 'required'
        ]);
        //delete from blog_tags table
        DB::table('blog_tags')->where('blog_id', $id)->delete();

        //update
        $blog = Blog::find($id);
        $blog->update($request->all());

        //check and add tags
        $blogTags = $request->input('blogtags');
        foreach($blogTags as$tagId){
            $tag = Tag::find($tagId);
            if(!isset($tag)){
                $newTag = new Tag();
                $newTag->name = $tagId;
                $newTag->save();
                $tagId = $newTag->id;
            }
            DB::insert('insert into blog_tags (blog_id, tag_id) values (?, ?)', [$id, $tagId]);
        }

        return redirect()->route('blogok.index')->with('success','Blog sikeresen módosítva!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $blog = Blog::find($id);
        $blog->delete();
        return redirect()->route('blogok.index')->with('success','Blog sikeresen törölve!');
    }
}
