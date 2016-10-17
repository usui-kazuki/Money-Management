json.array!(@categories) do |category|
  json.extract! category, :id, :categoryname, :loginuser_id, :type
  json.url category_url(category, format: :json)
end
