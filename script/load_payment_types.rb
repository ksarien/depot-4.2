PaymentType.transaction do
  PaymentType.destroy_all

  PaymentType.create(:name => "Check")
  PaymentType.create(:name => "Credit card")
  PaymentType.create(:name => "Purchase order")
end
