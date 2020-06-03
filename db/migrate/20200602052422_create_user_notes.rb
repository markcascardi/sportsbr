class CreateUserNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.integer :athlete_id
      t.text :note
    end
  end
end
