class CreateFavs < ActiveRecord::Migration[6.1]
  def change
    create_table :favs do |t|
      t.integer :orulo_id
      t.string :name
      t.string :description
      t.float :min_price
      t.float :min_area
      t.float :max_area
      t.integer :min_bedrooms
      t.integer :max_bedrooms
      t.integer :min_suites
      t.integer :max_suites
      t.integer :min_parking
      t.integer :max_parking
      t.integer :min_bathrooms
      t.integer :max_bathrooms
      t.float :price_per_private_square_meter
      t.string :status
      t.integer :apts_per_floor
      t.integer :number_of_floors
      t.text :features
      t.integer :stock
      t.string :finality
      t.datetime :orulo_updated_at
      t.string :orulo_url
      t.integer :developer_id
      t.string :developer_name
      t.integer :publisher_id
      t.string :publisher_name
      t.string :address_street_type
      t.string :address_street
      t.string :address_number
      t.string :address_are
      t.string :address_city
      t.float :address_latitude
      t.float :address_longitude
      t.string :address_state
      t.string :address_zip_code
      t.boolean :opportunity_broker
      t.boolean :opportunity_client
      t.boolean :opportunity_exchange_units
      t.integer :default_image_id
      t.text :default_image_description
      t.text :default_image_200x140
      t.text :default_image_520x280
      t.string :fav_user
      t.string :fav_update_at

      t.timestamps
    end
  end
end
