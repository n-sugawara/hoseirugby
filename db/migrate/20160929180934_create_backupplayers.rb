class CreateBackupplayers < ActiveRecord::Migration
  def change
    create_table :backupplayers do |t|
      t.integer :result_id
      t.integer :player_id

      t.timestamps null: false
    end
  end
end
