class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    render :index, layout: false
  end
end
