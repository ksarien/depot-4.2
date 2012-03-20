class Order < ActiveRecord::Base
#  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]

  has_many :line_items, dependent: :destroy
  belongs_to :payment_type
  belongs_to :product

  validates :name, :address, :email, presence: true
  #  validates :pay_type, inclusion: PAYMENT_TYPES
  validates :payment_type, :presence => true

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

end
