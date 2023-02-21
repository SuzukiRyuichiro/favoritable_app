# frozen_string_literal: true

User.destroy_all
Product.destroy_all unless ENV['SKIP_PRODUCT']
Favorite.destroy_all

def create_users
  User.create(email: 'mail@mail.com', password: '123123')
  User.create(email: 'mail@test.com', password: '123123')

  puts "Created #{User.all.count} users!"
end

def create_product
  client = Pexels::Client.new(Rails.application.credentials.pexels.api_key)
  name = Faker::Commerce.product_name

  client.photos.search(name, per_page: 1).each do |photo|
    product = Product.create(name:, image_url: photo.src['medium'])
    puts "Made #{product.name} : image => #{product.image_url}"
  end
end

def create_favorite(user, favoritable)
  fav = Favorite.new(user:, favoritable:)
  puts "#{fav.user.email} favorited #{fav.favoritable.name}" if fav.save
end

# actual seeding

create_users
100.times { create_product } unless ENV['SKIP_PRODUCT']

40.times do
  user = User.all.sample
  product = Product.all.sample
  create_favorite(user, product)
end
