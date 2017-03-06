# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# testuarant_deetz = {
#   :name=>"Testaurant",
#   :rating=>0.1,
#   :image_url=>"https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/SMPTE_Color_Bars.svg/329px-SMPTE_Color_Bars.svg.png",
#   :rating_count=>1001,
#   :latitude=>41.9281,
#   :longitude=>-87.706283,
#   :address=>"1234 Fake St, Fakerton, FA, 12345,Faketopia"
# }

rest_deetz = [
{"name"=>"the-stopalong-chicago", "rating"=>4.5, "rating_count"=>65, "image_url"=>"https://s3-media3.fl.yelpcdn.com/bphoto/dSi7zYlpDVVVcj52GJs0aA/ms.jpg", "latitude"=>41.9142608642578, "longitude"=>-87.6839294433594, "address"=>"1812 N Milwaukee Ave, Bucktown, Chicago, IL 60647"},
{"name"=>"en-hakkore-2-0-chicago", "rating"=>4.5, "rating_count"=>144, "image_url"=>"https://s3-media3.fl.yelpcdn.com/bphoto/Gp3tOxx9Pd6HO_tKyu9lyQ/ms.jpg", "latitude"=>41.9087028503418, "longitude"=>-87.6743316650391, "address"=>"1467 N Milwaukee Ave, Wicker Park, Chicago, IL 60622"},
{"name"=>"fatsos-last-stand-chicago-2", "rating"=>4.5, "rating_count"=>499, "image_url"=>"https://s3-media1.fl.yelpcdn.com/bphoto/yuKgtmXmBvY9Dd1BW3oHCA/ms.jpg", "latitude"=>41.896014812, "longitude"=>-87.6842521942044, "address"=>"2258 W Chicago Ave, Ukrainian Village, Chicago, IL 60622"},
{"name"=>"publican-anker-chicago-3", "rating"=>4.0, "rating_count"=>44, "image_url"=>"https://s3-media2.fl.yelpcdn.com/bphoto/C5lX7Ma9cHuF6bPF2kgW9w/ms.jpg", "latitude"=>41.9099917, "longitude"=>-87.6770808, "address"=>"1576 N Milwaukee Ave, Wicker Park, Chicago, IL 60622"}
]
rest_deetz.each do |x|
    resty = Restaurant.new(x)
    unless resty.save
        raise 'Something broken in restaurant seeding'
    end
end
