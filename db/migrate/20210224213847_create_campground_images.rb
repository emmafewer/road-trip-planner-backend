class CreateCampgroundImages < ActiveRecord::Migration[6.1]
  def change
    create_table :campground_images do |t|
      t.text :url
      t.references :campground, null: false, foreign_key: true
      t.text :title
      t.text :description

      t.timestamps
    end
  end
end
