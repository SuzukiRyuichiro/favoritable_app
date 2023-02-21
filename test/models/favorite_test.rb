# frozen_string_literal: true

require 'test_helper'

class FavoriteTest < ActiveSupport::TestCase
  test 'is invalid if the same user favorite same product' do
    product = create(:product)
    user = create(:user)
    create(:favorite, favoritable: product, user:)
    second_favorite = build(:favorite, favoritable: product, user:)

    assert_not second_favorite.valid?
  end
end
