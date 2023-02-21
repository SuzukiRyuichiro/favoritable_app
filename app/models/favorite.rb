# frozen_string_literal: true

class Favorite < ApplicationRecord
  belongs_to :favoritable, polymorphic: true
  belongs_to :user

  validates :user, uniqueness: { scope: :favoritable }
end
