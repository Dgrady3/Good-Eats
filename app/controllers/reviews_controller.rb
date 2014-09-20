class ReviewsController < ApplicationController

  def create
    @resturant = Resturant.find(params[:resturant_id])
    @review = Resturant.reviews.create(review_params)
    @review.save
        redirect_to resturant_path(@resturant), notice: 'Review created.'
    end

    private

    def review_params
      params.require(:answer).permit(:rating)
  end
end
