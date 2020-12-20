class BrandsController < ApplicationController
    before_action :authenticate_user!

    def index
    end

    def new
      @brand = Brand.new
      @brands = Brand.all
    end

    def create
        brand = Brand.new(brand_params)
        if brand.save
          redirect_to :action => "new"
        else
          redirect_to :action => "new"
        end
    end

    def destroy
        brand = Brand.find(params[:id])
        brand.destroy
        redirect_to action: :new
    end

    private
    def brand_params
        params.require(:brand).permit(:name)
    end
end
