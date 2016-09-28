class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :yomi
      t.string :position
      t.integer :height
      t.integer :weight
      t.string :gakubu
      t.integer :gakunen
      t.text :highscool
      t.text :career
      t.string :image
      t.text :comment

      t.timestamps null: false
    end
  end
end
