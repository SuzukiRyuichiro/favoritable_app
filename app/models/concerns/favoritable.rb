# frozen_string_literal: true

module Favoritable
  extend ActiveSupport::Concern

  included do
    has_many :favorites, as: :favoritable, dependent: :destroy
  end

  def favorite_for_user(user)
    favorites.find_by(user_id: user.id)
  end
end
