# frozen_string_literal: true

class FavoriteProductsController < ApplicationController
  def index
    @products = policy_scope(current_user.favorite_products.includes(:favoritors))
  end
end
