class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_cart
    begin
      cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
    end
    @checkout = params[:checkout]
    cart
  end
end
