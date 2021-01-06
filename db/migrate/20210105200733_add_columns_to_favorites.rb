class AddColumnsToFavorites < ActiveRecord::Migration[6.1]
  def change
    add_column :favorites, :fav_image, :string
    add_column :favorites, :fav_description, :text
    add_column :favorites, :fav_finality, :string
    add_column :favorites, :fav_min_bedrooms, :integer
    add_column :favorites, :fav_min_bathrooms, :integer
    add_column :favorites, :fav_min_area, :float
    add_column :favorites, :fav_street_type, :string
    add_column :favorites, :fav_street, :string
    add_column :favorites, :fav_area, :string
    add_column :favorites, :fav_city, :string
    add_column :favorites, :fav_state, :string
    add_column :favorites, :fav_min_price, :float
    add_index :favorites, :fav_user
  end
end
