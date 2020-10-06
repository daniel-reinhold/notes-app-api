class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|

      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.text :password
      t.boolean :verified
      t.boolean :disabled

      t.timestamps
    end
  end
end
