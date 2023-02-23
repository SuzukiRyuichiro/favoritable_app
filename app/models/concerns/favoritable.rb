# frozen_string_literal: true

module Favoritable
  extend ActiveSupport::Concern

  included do
    has_many :favorites, as: :favoritable, dependent: :destroy
  end

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
