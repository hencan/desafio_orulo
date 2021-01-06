json.extract! favorite, :id, :fav_id, :fav_name, :fav_user, :created_at, :updated_at
json.url favorite_url(favorite, format: :json)
