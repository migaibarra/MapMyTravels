class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name, null: false
      t.string :state
      t.string :country, null: false

      t.timestamps
    end
  end
end
