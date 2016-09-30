class CreateChengeplayers < ActiveRecord::Migration
  def change
    create_table :chengeplayers do |t|
      t.integer :result_id
      t.string :time1
      t.integer :time2
      t.string :back_player
      t.string :in_player

      t.timestamps null: false
    end
  end
end
