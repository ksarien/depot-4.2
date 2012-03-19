require 'test_helper'

class CartTest < ActiveSupport::TestCase
  fixtures :products

  test "cart must be created" do
    assert Cart.create
  end

  test "cart must be not empty" do
    cart = Cart.create

    cart.add_product(products(:ruby)).save
    cart.add_product(products(:html5)).save
    cart.add_product(products(:ruby)).save
    cart.add_product(products(:perl)).save

    assert_equal cart.line_items.size, 3

    total_price = [products(:ruby).price, products(:html5).price, products(:ruby).price, products(:perl).price].sum

    assert_equal cart.total_price, total_price
  end

end
