class ChangeNotesTable < ActiveRecord::Migration
  def change
    rename_table :notes, :user_notes
  end
end
