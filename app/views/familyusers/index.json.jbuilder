json.array!(@familyusers) do |familyuser|
  json.extract! familyuser, :id, :name
  json.url familyuser_url(familyuser, format: :json)
end
