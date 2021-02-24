class CreateCampgrounds < ActiveRecord::Migration[6.1]
  def change
    create_table :campgrounds do |t|
      t.text :url
      t.text :name
      t.string :side_id
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
