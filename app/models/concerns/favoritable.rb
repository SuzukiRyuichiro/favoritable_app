# frozen_string_literal: true

module Favoritable
  extend ActiveSupport::Concern

  included do
    has_many :favorites, as: :favoritable, dependent: :destroy
    has_many :favoritors, through: :favorites, source: :user
  end

  def favorited_by?(user)
    favoritors.include?(user)
  end

  def user_favorite(user)
    # Returns an instance of Favorite or nil
    favorites.find { |favorite| favorite.user == user }
  end
end
