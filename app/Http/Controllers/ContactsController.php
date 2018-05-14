<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ContactsController extends SiteController
{

    public function __construct()
    {
        parent::__construct();
        $this->template = env('THEME') . '.contacts';
    }

    public function index(Request $request)
    {
        if($request->isMethod('post')){
            $messages = [
                'required' => 'Field :attribute  required',
                'email'=>'Field :attribute enter correct email'
            ];

        $this->validate($request,[
            'name'=>'required|max:255',
            'email'=>'required|email',
            'subject'=>'required',
            'message'=>'required'
        ],$messages);
        $data = $request->all();
        $result = Mail::send(env('THEME').'.email',['data'=>$data],function ($m) use ($data){
           $mail_admin = env('MAIL_ADMIN');
          $m->from($data['email'],$data['name']);
          $m->from($mail_admin,'Admin')->subject($data['subject']);
        });
            if($result){
                return redirect()->route('contacts')->with('success_message','Email was send');
            }
        }
        $content = view(env('THEME').'.contact_content')->render();
        $this->vars = array_add($this->vars,'content',$content);
        return $this->renderOutput();
    }
}
