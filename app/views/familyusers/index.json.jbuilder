json.array!(@familyusers) do |familyuser|
  json.extract! familyuser, :id, :name, :loginuser_id
  json.url familyuser_url(familyuser, format: :json)
end
