class RestaurantsController < ApplicationController
  def index
    render :index, layout: false
  end
end
