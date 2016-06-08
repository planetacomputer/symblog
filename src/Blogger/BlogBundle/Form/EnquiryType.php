<?php
// src/Blogger/BlogBundle/Form/EnquiryType.php

namespace Blogger\BlogBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class EnquiryType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('name');
        $builder->add('email', 'email', array('label' => 'form.email','required' => false));
        $builder->add('subject');
        $builder->add('body', 'textarea', array('label' => 'form.body','required' => false));
    }

    public function getName()
    {
        return 'contact';
    }
}