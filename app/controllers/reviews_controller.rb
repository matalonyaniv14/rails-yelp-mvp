class ReviewsController < ApplicationController

  def index
    @reviews = Restaurant.find(params[:restaurant_id]).reviews
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    rev = Review.new(review_params)
    rev.restaurant_id = params[:restaurant_id]
    if rev.save
        redirect_to(restaurant_reviews_path)
      else
        redirect_to(new_restaurant_review_path)
      end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end


end
