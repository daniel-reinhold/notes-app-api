class CreatePriorities < ActiveRecord::Migration[6.0]
  def change
    create_table :priorities do |t|

      t.string :title
      t.string :color
      t.integer :priority
      t.integer :user_id

      t.timestamps
    end
  end
end
