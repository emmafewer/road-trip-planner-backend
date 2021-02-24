class CreateParks < ActiveRecord::Migration[6.1]
  def change
    create_table :parks do |t|
      t.text :url
      t.text :name
      t.string :park_code
      t.text :description
      t.string :latitude
      t.string :longitude
      t.string :designation

      t.timestamps
    end
  end
end
