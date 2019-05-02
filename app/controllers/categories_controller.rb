class CategoriesController < ApplicationController


  def index
    
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    redirect_to categories_path if @category.save
  end

  private

  def category_params
    params.require(:category).permit(:name, :words_attributes => [:category_id, :content])
  end
end
