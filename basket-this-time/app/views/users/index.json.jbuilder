json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password, :has_many
  json.url user_url(user, format: :json)
end
