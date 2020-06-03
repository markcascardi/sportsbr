class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.integer :team_id
      t.string :firstname
      t.string :lastname
      t.date :birthdate
      t.string :number
      t.string :year
      t.string :height
      t.integer :weight
      t.string :city
      t.string :state
      t.string :high_school
      t.string :ig_handle
      t.text :biography
    end
  end
end
