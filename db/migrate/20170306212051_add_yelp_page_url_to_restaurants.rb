class AddYelpPageUrlToRestaurants < ActiveRecord::Migration[5.0]
  def change
  	 add_column(:restaurants,:yelp_page_url,:string)
  end
end
