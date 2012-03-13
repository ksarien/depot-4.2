class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
#    @counter_visits ||= 0
  end
end
