# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = policy_scope(Product.eager_load(favorites: :user))
  end
end
