class ProductsController < ApplicationController
    before_action :authenticate_user!

    def index
        @products = Product.all
    end

    def new
      @product = Product.new
      
    end

    def create
        product = Product.new(product_params)
        if product.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
    end

    def destroy
        product = Product.find(params[:id])
        product.destroy
        redirect_to action: :index
    end

    private
    def product_params
        params.require(:product).permit(:name,:brand_id)
    end
end
