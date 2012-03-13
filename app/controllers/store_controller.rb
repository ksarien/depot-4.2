class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    session[:counter] ||= 0
    session[:counter] += 1
    @counter_visits = session[:counter]
  end
end
