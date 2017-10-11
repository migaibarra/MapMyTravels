class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :middle_initial, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :password_hash, null: false

      t.has_many :places, through: :users_places

      t.timestamps
    end
  end
end
