# frozen_string_literal: true

require 'test_helper'

class FavoriteProductsControllerTest < ActionDispatch::IntegrationTest
  test 'should get favorite products' do
    login_as create(:user)
    get favorite_products_url
    assert_response :success
  end
end
