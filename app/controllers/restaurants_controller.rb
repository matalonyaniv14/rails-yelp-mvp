class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
   res = Restaurant.new(restaurant_params)
   if res.save
    redirect_to("/restaurants")
  else
    redirect_to("/restaurants/new")
  end
  end


  private
  def restaurant_params
    params.require(:restaurant).permit(:name,:address,:phone_number,:category)
  end
end
