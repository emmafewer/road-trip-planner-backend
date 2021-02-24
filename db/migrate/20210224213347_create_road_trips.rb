class CreateRoadTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :road_trips do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
