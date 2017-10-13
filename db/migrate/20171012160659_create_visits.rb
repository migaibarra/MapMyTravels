class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :user_id
      t.integer :place_id
      t.string :travel_log
      t.date :visit_start_date, null: false
      t.date :visit_end_date, null: false

      t.timestamps
    end
  end
end
