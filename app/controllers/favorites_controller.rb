class FavoritesController < ApplicationController
  include SessionsHelper
  skip_before_filter  :verify_authenticity_token

  def index
    @favorite_restaurants = current_user.favorite_restaurants
  end

  def create
    @favorite = current_user.favorites.new(fav_deetz)
    if @favorite.save
      render nothing: true, status: :ok
    else
      render nothing: true, status: :bad_request
    end
  end

  def delete
    favorite.find_by(id: params[:id]).destroy
    render nothing: true, status: :ok
  end

  def fav_deetz
    params.require(:favorite).permit(:restaurant_id)
  end
end

