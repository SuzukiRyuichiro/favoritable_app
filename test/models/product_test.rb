# frozen_string_literal: true

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test 'is invalid if name or image_url was not given' do
    product = Product.new
    assert_not product.valid?
  end

  test 'creates an instance of product' do
    product = create(:product)
    assert product.valid?
  end
end
