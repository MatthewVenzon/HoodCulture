class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :entry
      t.string :street_address
      t.string :zip_code
      t.text :short_description
      t.string :image_url
      t.string :image_url_2
      t.integer :neighborhood_id
      t.integer :city_id
      t.integer :medium_id
      t.text :long_description

      t.timestamps
    end
  end
end
