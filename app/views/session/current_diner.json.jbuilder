if current_user
  json.current_diner do
    json.email current_user.email
  end
else
  json.current_user nil
end
