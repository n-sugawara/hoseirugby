class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :category
      t.date :data
      t.text :title
      t.string :image
      t.text :content

      t.timestamps null: false
    end
  end
end
