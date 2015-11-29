json.restaurant do
  json.id @restaurant.id
  json.name @restaurant.name
  json.rest_type @restaurant.rest_type
  json.address @restaurant.address
  json.dined_at @restaurant.dined_at
  json.rating @restaurant.rating
  json.comments @restaurant.comments
end
