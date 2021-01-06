class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.string :fav_id
      t.string :fav_name
      t.string :fav_user

      t.timestamps
    end
  end
end
