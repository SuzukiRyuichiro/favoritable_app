# frozen_string_literal: true

class Favorite < ApplicationRecord
  belongs_to :favoritable, polymorphic: true
end
