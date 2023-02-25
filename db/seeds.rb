require 'faker'

puts "🌱 Seeding data..."

# create some users
users = []
rand(1...15).times do
  user = User.create(
    user_name: Faker::Name.first_name + " " + Faker::Name.last_name,
    user_email: Faker::Internet.unique.email,
    phone_number: Faker::PhoneNumber.unique.phone_number
  )
  users.push(user)
end

#create some products
products = [] # move product outside of the loop
rand(1..15).times do
  product = Product.create(
    product_name: Faker::Commerce.product_name,
    product_type: Faker::Commerce.department(max: 1)
  )
  products.push(product) # push product to array of products
end

# create between 1 and 5 reviews for each user
users.each do |user|
  rand(1..5).times do
    Review.create(
      star_rating: rand(1..5),
      comments: Faker::Lorem.sentence,
      users_id: user.id, # add comma after user_id
      products_id: products.sample.id # use sample to select a random product from array
    )
  end
end

puts "🌱 Done seeding!"
