# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


50.times do 
    User.create(name: Faker::Name.unique.name, residence: Faker::Address.city, age: Faker::Number.between(from: 1, to: 35), occupation: Faker::Job.title)
end

50.times do
    Place.create(name: Faker::Restaurant.name, city: Faker::Address.city, hours: "8am - 6pm", wifi: Faker::Boolean.boolean)
end

50.times do
    Favorite.create(user: User.all.sample, place: Place.all.sample)
end

50.times do
    Review.create(stars: Faker::Number.between(from: 1, to: 5), description: Faker::Restaurant.review, user: User.all.sample, place: Place.all.sample)
end

