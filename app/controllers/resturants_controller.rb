class ResturantsController < ApplicationController
  def index
    @resturants = Resturant.order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @resturant = Resturant.find(params[:id])
    @review = Review.new
  end

  def new
    @resturant = Resturant.new
  end

  def create
      @resturant = Resturant.new(resturant_params)
    if @resturant.save
      redirect_to resturant_path(@resturant)
    else
      render :new
    end
  end

  private
    def resturant_params
      params.require(:resturant).permit(:name, :address, :city, :state, :zipcode, :description, :category)
    end
end
