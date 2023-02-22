# frozen_string_literal: true

class FavoriteProductsController < ApplicationController
  def index
    @products = policy_scope(Favorite.includes(:favoritable)).where(favoritable_type: 'Product').map(&:favoritable)
  end
end
