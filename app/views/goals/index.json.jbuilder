json.array!(@goals) do |goal|
  json.extract! goal, :id, :date, :goalmoney, :loginuser_id
  json.url goal_url(goal, format: :json)
end
