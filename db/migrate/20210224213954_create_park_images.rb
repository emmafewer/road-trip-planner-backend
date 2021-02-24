class CreateParkImages < ActiveRecord::Migration[6.1]
  def change
    create_table :park_images do |t|
      t.text :url
      t.references :park, null: false, foreign_key: true
      t.text :title

      t.timestamps
    end
  end
end
