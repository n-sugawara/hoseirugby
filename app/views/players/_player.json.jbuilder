json.extract! player, :id, :name, :yomi, :position, :height, :weight, :gakubu, :gakunen, :highscool, :career, :image, :comment, :created_at, :updated_at
json.url player_url(player, format: :json)