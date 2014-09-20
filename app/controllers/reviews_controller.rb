class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @resturant = Resturant.find(params[:resturant_id])
    @review = @resturant.reviews.create(review_params)
    if @review.save
        redirect_to resturant_path(@resturant), notice: 'Review created'
    else
      render :new, notice: 'Review could not be saved'
    end
  end

  private
  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
