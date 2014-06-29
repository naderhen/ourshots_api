json.array!(@group_shots) do |group_shot|
  json.extract! group_shot, :id
  json.url group_shot_url(group_shot, format: :json)
end
