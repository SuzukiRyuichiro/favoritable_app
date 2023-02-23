# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = policy_scope(Product).includes(favorites: :user)
  end
end
