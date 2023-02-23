# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'email shoud not be blank' do
    user = User.new
    assert_not user.valid?
  end

  test 'user created with email and password' do
    user = create(:user)
    assert user.valid?
  end

  test '#favorite to create a new favorite' do
    count_before = Favorite.all.count
    user = create(:user)
    product = create(:product)
    favorite = user.favorite(product)

    assert count_before < Favorite.all.count
    assert favorite.user == user && favorite.favoritable == product

    another_favorite = user.favorite(product)
    assert_nil another_favorite
  end

  test '#unfavorite to delete a favorite' do
    user = create(:user)
    product = create(:product)
    favorite = create(:favorite, favoritable: product, user:)

    user.unfavorite(product)

    assert_raises(ActiveRecord::RecordNotFound) do
      Favorite.find(favorite.id)
    end
  end
end
