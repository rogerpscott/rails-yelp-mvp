# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
restaurant=Restaurant.new({name:"#{Faker::Company.name}"+" "+%w(Bistro Cafe Gastrobar).sample,address:"#{Faker::Address.street_address}, #{Faker::Address.city}",phone_number:Faker::Number.number(9),category:%w(chinese italian japanese french belgian).sample})
restaurant.save

5.times do
review=Review.new({content:Faker::Lorem.paragraph,rating:(0..5).to_a.sample,restaurant_id:restaurant.id})
review.save
end
end
