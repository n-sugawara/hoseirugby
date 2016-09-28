class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :player_id
      t.integer :result_id

      t.timestamps null: false
    end
  end
end
