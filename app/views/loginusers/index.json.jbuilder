json.array!(@loginusers) do |loginuser|
  json.extract! loginuser, :id, :password, :username
  json.url loginuser_url(loginuser, format: :json)
end
