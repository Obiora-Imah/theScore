class CreateStatistics < ActiveRecord::Migration[6.0]
  def change
    create_table :statistics do |t|
      t.string :pos
      t.string :lng
      t.integer :att
      t.integer :att_per_game
      t.integer :yards
      t.integer :yards_avg
      t.integer :yards_per_game
      t.integer :touch_down
      t.integer :first
      t.integer :first_percentage
      t.integer :twenty_plus
      t.integer :forty_plus
      t.integer :fumbles
      t.integer :player_id



      t.timestamps
    end
  end
end
