module RestaurantsHelper
  def get_restaurant_panes(position)
    api_response = search_nearby(position[:coords])
    restaurant_models = parse_restaurants(api_response)
  end

  def search_nearby(coords)
    query_params = {
      :term => 'food',
      :radius_filter => 1200,
      :limit => 20,
      :coordinates => coords
    }
    search_result = Yelp::client.search('Chicago, IL', query_params)
  end

  def parse_restaurants(restaurant_data)
    restaurant_data.businesses.collect do |restaurant|
      restaurant_info = {
        :name => restaurant.name,
        :rating => restaurant.rating,
        :rating_count => restaurant.review_count,
        :url => restaurant.url,
        :image_url => restaurant.image_url,
        :latitude => restaurant.location.coordinate.latitude,
        :longitude => restaurant.location.coordinate.longitude,
        :address => restaurant.location.display_address.join(', ')
      }
      unless Restaurant.exists?(restaurant_info)
        memo_restaurant = Restaurant.new(restaurant_info)
        memo_restaurant.save
      else
        memo_restaurant = Restaurant.find_by(restaurant_info)
      end
      memo_restaurant
    end
  end
end
