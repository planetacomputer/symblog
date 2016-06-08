<?php

namespace Blogger\BlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('BloggerBlogBundle:Default:index.html.twig');
    }

    public function helloAction($name){
    	return $this->render('BloggerBlogBundle:Default:hello.html.twig', array('name' => $name, 'cognom' => 'lopez'));
    }

}
