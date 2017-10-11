class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name, null: false
      t.string :state
      t.string :country, null: false

      t.has_many :users, through: :users_places

      t.has_many :users, forgein_key: :hometown_id
      t.has_many :users, forgein_key: :currently_lives_id

      t.timestamps
    end
  end
end
