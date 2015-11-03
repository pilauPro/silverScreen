json.array!(@roles) do |role|
  json.extract! role, :id, :movie_id, :actor_id
  json.url role_url(role, format: :json)
end
