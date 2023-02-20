# frozen_string_literal: true

User.destroy_all
Product.destroy_all

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

create_users
10.times { create_product }
