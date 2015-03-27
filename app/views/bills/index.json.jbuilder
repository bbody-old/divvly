json.array!(@bills) do |bill|
  json.extract! bill, :id, :name, :description, :image, :cost, :payment_group_id, :user_id, :group_id, :paid
  json.url bill_url(bill, format: :json)
end
