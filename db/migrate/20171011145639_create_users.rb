class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :middle_initial
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :password_hash, null: false
      t.integer :hometown_id
      t.integer :currently_living_id

      t.timestamps
    end
  end
end
