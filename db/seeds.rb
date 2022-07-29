require 'faker'

puts 'Creating restaurants...'

50.times do 
  restaurant = Restaurant.create!(
                name: Faker::Restaurant.name,
                address: Faker::Address.full_address
              )

  review = Review.create(content: Faker::Restaurant.review, restaurant: restaurant)
end

puts 'Finished!'