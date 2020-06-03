class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :sport_id
      t.integer :season_id
    end
  end
end
