#require 'PaymentType'

Order.transaction do
  Order.destroy_all

  payment = PaymentType.find_by_name('Check')
  (1..100).each do |i|
    Order.create(:name => "Customer #{i}",
                 :address => "#{i} Main Street",
                 :email => "customer-#{i}@example.com",
                 :payment_type_id => payment.id)
  end
end
