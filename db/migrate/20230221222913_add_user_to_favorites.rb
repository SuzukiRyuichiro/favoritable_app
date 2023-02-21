# frozen_string_literal: true

class AddUserToFavorites < ActiveRecord::Migration[7.0]
  def change
    add_reference :favorites, :user, null: false, foreign_key: true
  end
end
