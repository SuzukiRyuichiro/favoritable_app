# frozen_string_literal: true

require 'test_helper'

class FavoriteProductsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get favorite_products_index_url
    assert_response :success
  end
end
