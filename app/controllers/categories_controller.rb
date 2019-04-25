class CategoriesController < ApplicationController

  def new
  	@category = Category.new
  	@category.words.build
  end

  def create
  	@category = Category.create(category_params)
  	if @category.save

  	else

  	end
  end

  private

  def category_params
  	params.require(:category).permit(:name , :words_attributes => [:content])
  end
end
