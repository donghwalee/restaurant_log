json.restaurant do
  json.id @restaurant.id
  json.name @restaurant.name
  json.address @restaurant.address
  json.dined_at @restaurant.dined_at
  json.rating @restaurant.rating
  json.comments @restaurant.comments
end
