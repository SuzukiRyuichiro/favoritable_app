# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites, dependent: :destroy
  has_many :favorite_products, through: :favorites, source: :favoritable, source_type: 'Product'

  def favorite(favoritable)
    favorite = Favorite.new(user: self, favoritable:)
    favorite.save
  end

  def unfavorite(favoritable)
    favorite = Favorite.find_by(user: self, favoritable:)
    return unless favorite

    favorite.destroy
  end
end
