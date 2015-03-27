json.array!(@payments) do |payment|
  json.extract! payment, :id, :user_id, :bill_id, :method, :paid
  json.url payment_url(payment, format: :json)
end
