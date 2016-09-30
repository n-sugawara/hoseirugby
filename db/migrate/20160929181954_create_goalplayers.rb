class CreateGoalplayers < ActiveRecord::Migration
  def change
    create_table :goalplayers do |t|
      t.integer :result_id
      t.string :time1
      t.integer :time2
      t.integer :player_id
      t.string :goalkind
      t.integer :point

      t.timestamps null: false
    end
  end
end
