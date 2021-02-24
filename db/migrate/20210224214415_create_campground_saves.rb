class CreateCampgroundSaves < ActiveRecord::Migration[6.1]
  def change
    create_table :campground_saves do |t|
      t.references :campground, null: false, foreign_key: true
      t.references :road_trip, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
