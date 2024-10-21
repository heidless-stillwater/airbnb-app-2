# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# User.create!(
#               email: "example@railstutorial.org",
#               password: "foobar"
#             )

####################
# USERS
# 10.times do |n|
#   email = "foo-#{n+1}@railstutorial.org"
#   password = "password"
#   User.create!(
#                 email: email,
#                 password: password,
#                 password_confirmation: password
#               )
# end

################
# USER & PROFILE
#
10.times do |n|
  email = "foo_#{n+1}@bar.com"
  password = "password"
  user = User.create!(
                email: email,
                password: password,
                password_confirmation: password
              )
  profile = user.profile
  profile.update address_1: "99 Bd Haussmann, 75008 Paris, France", city: "Paris", state: "Île-de-France", country: "France", zip_code: "75008"
end

############
# PROPERTIES
#
10.times do |i|
  property = Property.create!(
    name: Faker::Lorem.word, 
    headline: Faker::Lorem.sentence, 
    description: Faker::Lorem.paragraph,
    address_1:Faker::Address.street_address,
    city:Faker::Address.city,
    state:Faker::Address.state,
    country: "United States",
    price: Money.from_amount((25..100).to_a.sample)
  )

  property.images.attach(io: File.open(Rails.root.join("db", "sample", "images", "property_#{i + 1}.png")), filename: property.name )

end

