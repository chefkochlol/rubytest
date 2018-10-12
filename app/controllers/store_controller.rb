class StoreController < ApplicationController
  include CurrentCart
  before_action :increment_counter, only: [:index]
  before_action :set_cart
  def index
    @products = Product.order(:title)
  end

  private

  def increment_counter
    if session[:counter].nil?
      session[:counter] = 0
    else
      session[:counter] += 1
    end
  end
end
