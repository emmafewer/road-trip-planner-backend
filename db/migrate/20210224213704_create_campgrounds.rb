class CreateCampgrounds < ActiveRecord::Migration[6.1]
  def change
    create_table :campgrounds do |t|
      t.text :url
      t.text :name
      t.string :park_code
      t.string :latitude
      t.string :longitude
      t.text :image
      t.text :description

      t.timestamps
    end
  end
end
