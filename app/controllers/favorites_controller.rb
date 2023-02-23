# frozen_string_literal: true

class FavoritesController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    favorite = Favorite.new(favoritable: product, user: current_user)

    authorize favorite

    return unless favorite.save

    respond_to do |format|
      format.text do
        render partial: 'products/product_card', locals: { user: current_user, product: }, formats: [:html]
      end
    end
  end
end
