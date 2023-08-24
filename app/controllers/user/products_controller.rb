class User::ProductsController < User::ApplicationController
  # GET /products or /products.json
  def index
    @products = Product.all.order(:id)
  end

  # GET /products/1 or /products/1.json
  def show
    @product = Product.find(params[:id])
  end
end
