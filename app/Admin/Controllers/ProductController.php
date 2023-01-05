<?php

namespace App\Admin\Controllers;

use App\Product;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ProductController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Product';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Product());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('price', __('Price'));
        $grid->column('description', __('Description'));
        $grid->column('img', __('Img'));
        $grid->column('no_of_bedrooms', __('No of bedrooms'));
        $grid->column('no_of_bathrooms', __('No of bathrooms'));
        $grid->column('status', __('Status'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Product::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('price', __('Price'));
        $show->field('description', __('Description'));
        $show->field('img', __('Img'));
        $show->field('no_of_bedrooms', __('No of bedrooms'));
        $show->field('no_of_bathrooms', __('No of bathrooms'));
        $show->field('status', __('Status'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Product());

        $form->text('name', __('Name'));
        $form->number('price', __('Price'));
        $form->text('description', __('Description'));
        $form->image('img', __('Img'));
        $form->number('no_of_bedrooms', __('No of bedrooms'));
        $form->number('no_of_bathrooms', __('No of bathrooms'));
        $form->number('status', __('Status'));

        return $form;
    }
}
