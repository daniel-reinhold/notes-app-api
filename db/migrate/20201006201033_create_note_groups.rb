class CreateNoteGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :note_groups do |t|

      t.string :title
      t.string :color
      t.integer :user_id

      t.timestamps
    end
  end
end
