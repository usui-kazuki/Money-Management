json.array!(@notices) do |notice|
  json.extract! notice, :id, :date, :title, :memo
  json.url notice_url(notice, format: :json)
end
