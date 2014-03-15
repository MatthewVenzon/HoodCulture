class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :small_image_url
      t.string :large_image_url

      t.timestamps
    end
  end
end
