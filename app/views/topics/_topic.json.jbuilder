json.extract! topic, :id, :category, :data, :title, :image, :content, :created_at, :updated_at
json.url topic_url(topic, format: :json)