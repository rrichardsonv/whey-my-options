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
{"name"=>"publican-anker-chicago-3", "rating"=>4.0, "rating_count"=>44, "image_url"=>"https://s3-media2.fl.yelpcdn.com/bphoto/C5lX7Ma9cHuF6bPF2kgW9w/ms.jpg", "latitude"=>41.9099917, "longitude"=>-87.6770808, "address"=>"1576 N Milwaukee Ave, Wicker Park, Chicago, IL 60622"},
{"name"=>"fifolet-chicago", "rating"=>4.0, "rating_count"=>61, "image_url"=>"https://s3-media1.fl.yelpcdn.com/bphoto/uIK3PwG2Qb2ATEHAvelO1Q/ms.jpg", "latitude"=>41.90351, "longitude"=>-87.67653, "address"=>"1942 W Division St, Wicker Park, Chicago, IL 60622"},
{"name"=>"small-cheval-chicago-2", "rating"=>4.0, "rating_count"=>466, "image_url"=>"https://s3-media2.fl.yelpcdn.com/bphoto/MH4L_iPHGXBTGJ5VPVMx_A/ms.jpg", "latitude"=>41.9128227233887, "longitude"=>-87.6815719604492, "address"=>"1732 N Milwaukee Ave, Wicker Park, Chicago, IL 60647"},
{"name"=>"silli-kori-chicago", "rating"=>4.5, "rating_count"=>73, "image_url"=>"https://s3-media4.fl.yelpcdn.com/bphoto/2xKcTQ9chGIOtMXnHQXMAQ/ms.jpg", "latitude"=>41.9028599, "longitude"=>-87.67935, "address"=>"2053 W Division St, West Town, Chicago, IL 60622"},
{"name"=>"forbidden-root-chicago", "rating"=>4.5, "rating_count"=>150, "image_url"=>"https://s3-media2.fl.yelpcdn.com/bphoto/n6YBh7aBLSAFlIqbBPqsKQ/ms.jpg", "latitude"=>41.8962684049794, "longitude"=>-87.6713814117853, "address"=>"1746 W Chicago Ave, Ukrainian Village, Chicago, IL 60622"},
{"name"=>"rumi-middle-eastern-grill-chicago-2", "rating"=>4.5, "rating_count"=>72, "image_url"=>"https://s3-media1.fl.yelpcdn.com/bphoto/Wv5LzETDwAqNGP-af67Pug/ms.jpg", "latitude"=>41.9092, "longitude"=>-87.67616, "address"=>"1534 N Milwaukee, Wicker Park, Chicago, IL 60622"},
{"name"=>"tryzub-ukrainian-kitchen-chicago", "rating"=>4.5, "rating_count"=>49, "image_url"=>"https://s3-media1.fl.yelpcdn.com/bphoto/4STkEp6VSIKDb6IO9STliA/ms.jpg", "latitude"=>41.8958059, "longitude"=>-87.6819438, "address"=>"2201 W Chicago Ave, Ukrainian Village, Chicago, IL 60622"},
{"name"=>"the-tankard-chicago", "rating"=>4.5, "rating_count"=>22, "image_url"=>"https://s3-media4.fl.yelpcdn.com/bphoto/tHzNET6qTT8YQAUvSbgDrw/ms.jpg", "latitude"=>41.9112526, "longitude"=>-87.6784449, "address"=>"1635 N Milwaukee Ave, Wicker Park, Chicago, IL 60647"},
{"name"=>"dox-quality-greek-chicago-3", "rating"=>4.0, "rating_count"=>44, "image_url"=>"https://s3-media4.fl.yelpcdn.com/bphoto/25QwtJTqSYn86Wtxugue7A/ms.jpg", "latitude"=>41.9098282, "longitude"=>-87.6776443, "address"=>"1566 N Damen Ave, Wicker Park, Chicago, IL 60622"},
{"name"=>"the-pasta-bowl-chicago-2", "rating"=>4.0, "rating_count"=>119, "image_url"=>"https://s3-media3.fl.yelpcdn.com/bphoto/QuCteaUljGUn1KkSmC6BSA/ms.jpg", "latitude"=>41.91072, "longitude"=>-87.67467, "address"=>"1852 W North Ave, Wicker Park, Chicago, IL 60622"},
{"name"=>"bucks-chicken-and-biscuits-chicago", "rating"=>3.5, "rating_count"=>147, "image_url"=>"https://s3-media4.fl.yelpcdn.com/bphoto/CkFCqPNqMfSLHWzKtuBK_Q/ms.jpg", "latitude"=>41.9035720825195, "longitude"=>-87.6706161499023, "address"=>"1700 W Division St, Wicker Park, Chicago, IL 60622"},
{"name"=>"whisk-chicago-2", "rating"=>4.0, "rating_count"=>577, "image_url"=>"https://s3-media4.fl.yelpcdn.com/bphoto/P81ZORu5B_ReE5DOxDBhGg/ms.jpg", "latitude"=>41.8961206, "longitude"=>-87.6778316, "address"=>"2018 W Chicago Ave, Ukrainian Village, Chicago, IL 60622"},
{"name"=>"furious-spoon-wicker-park-chicago", "rating"=>4.0, "rating_count"=>756, "image_url"=>"https://s3-media4.fl.yelpcdn.com/bphoto/Gu8cjowwHNBSDqylGUI-3w/ms.jpg", "latitude"=>41.9099678099155, "longitude"=>-87.6766853034496, "address"=>"1571 N Milwaukee Ave, Wicker Park, Chicago, IL 60622"},
{"name"=>"sultans-market-chicago", "rating"=>4.0, "rating_count"=>1171, "image_url"=>"https://s3-media3.fl.yelpcdn.com/bphoto/tyOSggiQnH6fNw5C8M8xhw/ms.jpg", "latitude"=>41.9103476865049, "longitude"=>-87.6795239565164, "address"=>"2057 W N Ave, Wicker Park, Chicago, IL 60647"},
{"name"=>"pub-royale-chicago", "rating"=>4.0, "rating_count"=>212, "image_url"=>"https://s3-media1.fl.yelpcdn.com/bphoto/j2-p3LVdbpiS54R36I2gUA/ms.jpg", "latitude"=>41.9028599, "longitude"=>-87.67916, "address"=>"2049 W Division, West Town, Chicago, IL 60622"},
{"name"=>"americano-2211-chicago", "rating"=>4.5, "rating_count"=>64, "image_url"=>"https://s3-media1.fl.yelpcdn.com/bphoto/O5Rcmg9SstJLOt7PV2U5MA/ms.jpg", "latitude"=>41.9101749, "longitude"=>-87.6828797, "address"=>"2211 W North Ave, Wicker Park, Chicago, IL 60647"},
{"name"=>"cheesies-pub-and-grub-chicago-4", "rating"=>3.5, "rating_count"=>58, "image_url"=>"https://s3-media2.fl.yelpcdn.com/bphoto/_igcUOCxruK6AzQmGJJrYA/ms.jpg", "latitude"=>41.90679, "longitude"=>-87.67138, "address"=>"1365 N. Milwaukee Ave., Wicker Park, Chicago, IL 60622"},
{"name"=>"en-hakkore-2-0-chicago", "rating"=>4.5, "rating_count"=>145, "image_url"=>"https://s3-media3.fl.yelpcdn.com/bphoto/Gp3tOxx9Pd6HO_tKyu9lyQ/ms.jpg", "latitude"=>41.9087028503418, "longitude"=>-87.6743316650391, "address"=>"1467 N Milwaukee Ave, Wicker Park, Chicago, IL 60622"},
{"name"=>"fatsos-last-stand-chicago-2", "rating"=>4.5, "rating_count"=>500, "image_url"=>"https://s3-media1.fl.yelpcdn.com/bphoto/yuKgtmXmBvY9Dd1BW3oHCA/ms.jpg", "latitude"=>41.896014812, "longitude"=>-87.6842521942044, "address"=>"2258 W Chicago Ave, Ukrainian Village, Chicago, IL 60622"},
{"name"=>"fifolet-chicago", "rating"=>4.0, "rating_count"=>62, "image_url"=>"https://s3-media1.fl.yelpcdn.com/bphoto/uIK3PwG2Qb2ATEHAvelO1Q/ms.jpg", "latitude"=>41.90351, "longitude"=>-87.67653, "address"=>"1942 W Division St, Wicker Park, Chicago, IL 60622"},
{"name"=>"publican-anker-chicago-3", "rating"=>4.0, "rating_count"=>47, "image_url"=>"https://s3-media2.fl.yelpcdn.com/bphoto/C5lX7Ma9cHuF6bPF2kgW9w/ms.jpg", "latitude"=>41.9099917, "longitude"=>-87.6770808, "address"=>"1576 N Milwaukee Ave, Wicker Park, Chicago, IL 60622"},
{"name"=>"small-cheval-chicago-2", "rating"=>4.0, "rating_count"=>467, "image_url"=>"https://s3-media2.fl.yelpcdn.com/bphoto/MH4L_iPHGXBTGJ5VPVMx_A/ms.jpg", "latitude"=>41.9128227233887, "longitude"=>-87.6815719604492, "address"=>"1732 N Milwaukee Ave, Wicker Park, Chicago, IL 60647"},
{"name"=>"silli-kori-chicago", "rating"=>4.5, "rating_count"=>74, "image_url"=>"https://s3-media4.fl.yelpcdn.com/bphoto/2xKcTQ9chGIOtMXnHQXMAQ/ms.jpg", "latitude"=>41.9028599, "longitude"=>-87.67935, "address"=>"2053 W Division St, West Town, Chicago, IL 60622"},
{"name"=>"furious-spoon-wicker-park-chicago", "rating"=>4.0, "rating_count"=>759, "image_url"=>"https://s3-media4.fl.yelpcdn.com/bphoto/Gu8cjowwHNBSDqylGUI-3w/ms.jpg", "latitude"=>41.9099678099155, "longitude"=>-87.6766853034496, "address"=>"1571 N Milwaukee Ave, Wicker Park, Chicago, IL 60622"},
{"name"=>"tryzub-ukrainian-kitchen-chicago", "rating"=>4.5, "rating_count"=>50, "image_url"=>"https://s3-media1.fl.yelpcdn.com/bphoto/4STkEp6VSIKDb6IO9STliA/ms.jpg", "latitude"=>41.8958059, "longitude"=>-87.6819438, "address"=>"2201 W Chicago Ave, Ukrainian Village, Chicago, IL 60622"},
{"name"=>"bucks-chicken-and-biscuits-chicago", "rating"=>3.5, "rating_count"=>148, "image_url"=>"https://s3-media4.fl.yelpcdn.com/bphoto/CkFCqPNqMfSLHWzKtuBK_Q/ms.jpg", "latitude"=>41.9035720825195, "longitude"=>-87.6706161499023, "address"=>"1700 W Division St, Wicker Park, Chicago, IL 60622"},
{"name"=>"whisk-chicago-2", "rating"=>4.0, "rating_count"=>580, "image_url"=>"https://s3-media4.fl.yelpcdn.com/bphoto/P81ZORu5B_ReE5DOxDBhGg/ms.jpg", "latitude"=>41.8961206, "longitude"=>-87.6778316, "address"=>"2018 W Chicago Ave, Ukrainian Village, Chicago, IL 60622", "yelp_page_url"=>"https://m.yelp.com/biz/maison-parisienne-chicago?adjust_creative=4JjxTuQWmKL2b7bYQQzoSQ&utm_campaign=yelp_api&utm_medium=api_v2_search&utm_source=4JjxTuQWmKL2b7bYQQzoSQ"}
]
rest_deetz.each do |x|
    resty = Restaurant.new(x)
    unless resty.save
        raise 'Something broken in restaurant seeding'
    end
end
