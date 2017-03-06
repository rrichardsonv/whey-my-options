class RestaurantsController < ApplicationController
  include RestaurantsHelper
  def index
    if request.xhr?
      user_location = {
        coords: {
          latitude: location_params[:lat],
          longitude: location_params[:long]
        }

      }
      # near_restaurants = get_restaurant_panes(user_location)
      # FOR TESTING SO YOU DON'T USE ALL THE API CALLS
      near_restaurants = Restaurant.all

      render partial: 'index', layout: false, locals: {restaurants: near_restaurants} , status: :ok
    else
      @restaurants = Restaurant.all
      render :index
    end
  end
private
  def location_params
    params.require(:coords).permit(:lat, :long)
  end
end
