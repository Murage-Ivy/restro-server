user_image_urls = ["https://img.freepik.com/free-photo/medium-shot-african-woman-pointing-forward_23-2148747976.jpg?w=360&t=st=1669741025~exp=1669741625~hmac=ca3db8a99f0ffa5da11a20cfd6d8d95b38156476f263a3815de26f0d1aec9201",
                   "https://img.freepik.com/free-photo/happy-african-woman-leather-vest-with-shiny-confetti-her-cheeks_23-2148747930.jpg?w=360&t=st=1669741072~exp=1669741672~hmac=629411b81402341781427587e66cddd0a5f40905a82533f14a243ab0a8c4daec"]
puts "🧑🧑 Seeding"

User.create(username: Faker::Name.middle_name,
            password: "123",
            image_url: user_image_urls.sample)

User.create(username: Faker::Name.middle_name,
            password: "123",
            image_url: user_image_urls.sample)

puts "🍟🍟 Seeding!!"

Restaurant.create(name: "Cj's",
                  address: "Nairobi, Kenya",
                  rating: rand(1..5),
                  like: false,
                  description: Faker::Restaurant.description,
                  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/12/ba/6c/44/chicken-fajita-signature.jpg")

Restaurant.create(name: "ArtCaffe",
                  address: "Nairobi, Kenya",
                  rating: rand(1..5),
                  like: false,
                  description: Faker::Restaurant.description,
                  image_url: "https://img.freepik.com/free-photo/banquet-table-with-snacks_144627-18361.jpg?w=740&t=st=1670329963~exp=1670330563~hmac=7bbb7233d5a0d02b85d79240b7c78597534c68b7e6671c39c6cfce6bef4a9f9e")

Restaurant.create(name: "The Lord Eroll's",
                  address: "Nairobi, Kenya",
                  rating: rand(1..5),
                  like: false,
                  description: Faker::Restaurant.description,
                  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/11/13/a3/80/idina-east-terrace-at.jpg")

Restaurant.create(name: "Harvest Restaurant",
                  address: "Nairobi, Kenya",
                  rating: rand(1..5),
                  like: false,
                  description: Faker::Restaurant.description,
                  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/22/17/05/8c/mama-harvest-welcomes.jpg")

Restaurant.create(name: "Kilimanjaro Jamia",
                  address: "Nairobi, Kenya",
                  rating: rand(1..5),
                  like: false,
                  description: Faker::Restaurant.description,
                  image_url: "https://pbs.twimg.com/media/EzzOB3IXsAQmoMG.jpg")

puts "🥘🥘 seeding!!"

Food.create(name: Faker::Food.dish,
            restaurant_id: Restaurant.order("RANDOM()").first.id,
            price: rand(5..20),
            rating: rand(1..5),
            image_url: "https://img.freepik.com/free-photo/delicious-fried-chicken-plate_144627-27383.jpg?w=740&t=st=1669740082~exp=1669740682~hmac=f33a3ae6a83cab04fade4b1e4401572049d549905228ef5b6a1203455e193027")

Food.create(name: Faker::Food.dish,
            restaurant_id: Restaurant.order("RANDOM()").first.id,
            price: rand(5..20),
            rating: rand(1..5),
            image_url: "https://img.freepik.com/free-photo/top-view-vegetable-soup-with-meat-inside-plate-grey_140725-36040.jpg?w=740&t=st=1669740186~exp=1669740786~hmac=8c26098b71cd266bfeee3fedafdc3b162f07a25d9292ad9ae0e76c51f0b673d7")

Food.create(name: Faker::Food.dish,
            restaurant_id: Restaurant.order("RANDOM()").first.id,
            price: rand(5..20),
            rating: rand(1..5),
            image_url: "https://img.freepik.com/free-photo/baked-chicken-wings-asian-style-tomatoes-sauce-plate_2829-10657.jpg?w=740&t=st=1669740224~exp=1669740824~hmac=9f60a170cde02b2a689a72c91d27177e7d2c2d71b39b23f3e5874e04502a5229")

Food.create(name: Faker::Food.dish,
            restaurant_id: Restaurant.all.sample.id,
            price: rand(5..20),
            rating: rand(1..5),
            image_url: "https://img.freepik.com/free-photo/chicken-skewers-with-slices-sweet-peppers-dill_2829-18813.jpg?w=740&t=st=1669740255~exp=1669740855~hmac=513e690f83a9b882996a6d5bf7266b6feed5e1049dec5a954cbb7bf462e8a6c8")

Food.create(name: Faker::Food.dish,
            restaurant_id: Restaurant.all.sample.id,
            price: rand(5..20),
            rating: rand(1..5),
            image_url: "https://img.freepik.com/free-photo/side-view-doner-with-grilled-chicken-greens-lettuce-tomato-french-fries-table_141793-4881.jpg?w=740&t=st=1669740284~exp=1669740884~hmac=08a438dfb0d62826bb10afee2078dbc7434f75c3580b08fbeddd2bec3b2b65d8")

Food.create(name: Faker::Food.dish,
            restaurant_id: Restaurant.all.sample.id,
            price: rand(5..20),
            rating: rand(1..5),
            image_url: "https://img.freepik.com/free-photo/sausage-fried-rice-with-tomatoes-carrots-shiitake-mushrooms-plate_1150-27184.jpg?w=740&t=st=1669740324~exp=1669740924~hmac=10106c369675c40d34982da397c96b4e39a71b076767c8c43fe3e4bf6add9453")

Food.create(name: Faker::Food.dish,
            restaurant_id: Restaurant.all.sample.id,
            price: rand(5..20),
            rating: rand(1..5),
            image_url: "https://img.freepik.com/free-photo/front-view-burger-fries-plate_23-2148784444.jpg?w=740&t=st=1669740363~exp=1669740963~hmac=a0970b47b9fbfffd7903b9a1b2b51152841df13771cbbd2dbad8474228659e79")

puts "⭐⭐ seeding!!"

# 10.times do
#   Review.create(title: Faker::Lorem.sentence,
#                 comment: Faker::Restaurant.review,
#                 restaurant_id: Restaurant.all.sample.id,
#                 user_id: User.all.sample.id)
# end

puts "✅✅ done!!"
