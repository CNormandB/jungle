class Admin::CategoriesController < ApplicationController
  def index
    def create
      @category = Category.new(category_params)
      if @category.save
        redirect_to admin_categories_path, notice: 'Category was successfully created.'
      else
        render :new
      end
    end
  
    def category_params
      params.require(:category).permit(:name)
    end
  end
end