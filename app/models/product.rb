# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true
end
