class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.timestamp :time
      t.string :category
      t.string :team
      t.string :opponent
      t.integer :score_first_t
      t.integer :score_first_g
      t.integer :score_first_pg
      t.integer :score_first_dg
      t.integer :score_second_t
      t.integer :score_second_g
      t.integer :score_second_pg
      t.integer :score_second_dg
      t.integer :opponent_score_first_t
      t.integer :opponent_score_first_g
      t.integer :opponent_score_first_pg
      t.integer :opponent_score_first_dg
      t.integer :opponent_score_second_t
      t.integer :opponent_score_second_g
      t.integer :opponent_score_second_pg
      t.integer :opponent_score_second_dg
      t.integer :ho
      t.integer :rpr
      t.integer :lpr
      t.integer :rlo
      t.integer :llo
      t.integer :rfl
      t.integer :lfl
      t.integer :n08
      t.integer :sh
      t.integer :so
      t.integer :rctb
      t.integer :lctb
      t.integer :rwtb
      t.integer :lwtb
      t.integer :fb
      t.integer :backupplayer
      t.string :place

      t.timestamps null: false
    end
  end
end
