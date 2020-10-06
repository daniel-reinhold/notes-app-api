class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|

      t.string :title
      t.text :description
      t.datetime :due_date
      t.boolean :done
      t.integer :user_id
      t.integer :note_group_id
      t.integer :priority_id

      t.timestamps
    end
  end
end
