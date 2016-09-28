json.extract! photo, :id, :image, :player_id, :result_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)