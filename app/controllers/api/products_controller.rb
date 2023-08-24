class Api::ProductsController < Api::ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  # GET /products or /products.json
  def index
    @products = Product.all

    render json: { success: true, products: @products.map(&:as_json)}
  end

  # GET /products/1 or /products/1.json
  def show
    render json: { success: true, product: @product.as_json}
  end

  # GET /products/new
  def new
    @product = Product.new
    render json: { success: true, product: @product.as_json}
  end

  # GET /products/1/edit
  def edit
    render json: { success: true, product: @product.as_json}
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        render json: { success: true, product: @product.as_json}
      else
        render json: { errors: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        render json: { success: true, product: @product.as_json}
      else
        render json: { errors: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      render json: { success: true }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :description, :price_subunit, :price_currency)
    end
end
