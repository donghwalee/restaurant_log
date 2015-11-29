json.current_diner current_user.email

json.restaurants(@restaurants) do |rest|
  json.id rest.id
  json.name rest.name
  json.rest_type rest.rest_type
  json.address rest.address
  json.dined_at rest.dined_at
  json.rating rest.rating
  json.comments rest.comments
end
