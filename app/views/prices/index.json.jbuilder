json.array!(@prices) do |price|
  json.extract! price, :id, :date, :price, :memo, :familyuser_id, :payment, :loginuser_id, :type, :category_id
  json.url price_url(price, format: :json)
end
