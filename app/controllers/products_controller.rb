class ProductsController < ApplicationController

  def product_params
    params.require(:product).permit(:name, :description, :price, :category_id)
  end

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
  end

end
