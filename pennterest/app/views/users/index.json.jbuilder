json.array!(@users) do |user|
  json.extract! user, :id, :name, :about_me
  json.url user_url(user, format: :json)
end
