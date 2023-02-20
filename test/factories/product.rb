# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    image_url { 'https://picsum.photos/200' }
  end
end
