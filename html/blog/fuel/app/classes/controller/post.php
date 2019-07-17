<?php

use Fuel\Core\Controller;
use Fuel\Core\View;

class Controller_Post extends Controller
{
    public function action_auto_insert()
    {
        for ($i = 0; $i < 10; $i++)
        {
           $row = new Model_Post();
           $row->title = $i . '番目の登校の件';
           $row->summary = $i . '番目の投稿の概要';
           $row->body = 'これは' . $i . '番目の投稿です。' . "\n" . 'テストで自動投稿しています。';
           $row->save();


//            $row = array();
//            $row['title'] = $i . '番目の登校の件';
//            $row['summary'] = $i . '番目の投稿の概要';
//            $row['body'] = 'これは' . $i . '番目の投稿です。' . "\n" . 'テストで自動投稿しています。';

//            $post->set($row);

        }
        echo "Finished!";
    }
//    public function action_index()
//    {
//           $data = array();
//           $data['rows'] = Model_Post::find_all();
//           var_dump($data);
//           return View::forge('post/list', $data);
//    }
//    public function action__form()
//    {
//        return View::forge('post/form');
//    }
//    public function action_save()
//    {
//        $form =array();
//        $form['title'] = input::post('title');
//        $form['summary'] = input::post('summary');
//        $form['body'] = input::post('body');
//        $post = Model_Post::forge();
//        $post ->set($form);
//        $post ->save();
//
//        Response::redirect('post');
//    }
}