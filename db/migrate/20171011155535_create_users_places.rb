class CreateUsersPlaces < ActiveRecord::Migration
  def change
    create_table :users_places do |t|
      t.integer :user_id
      t.integer :place_id
      t.string :travel_log

      t.timestamps
    end
  end
end
