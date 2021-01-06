# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_06_025602) do

  create_table "favorites", force: :cascade do |t|
    t.string "fav_id"
    t.string "fav_name"
    t.string "fav_user"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "fav_image"
    t.text "fav_description"
    t.string "fav_finality"
    t.integer "fav_min_bedrooms"
    t.integer "fav_min_bathrooms"
    t.float "fav_min_area"
    t.string "fav_street_type"
    t.string "fav_street"
    t.string "fav_area"
    t.string "fav_city"
    t.string "fav_state"
    t.float "fav_min_price"
    t.index ["fav_user"], name: "index_favorites_on_fav_user"
  end

  create_table "favs", force: :cascade do |t|
    t.integer "orulo_id"
    t.string "name"
    t.string "description"
    t.float "min_price"
    t.float "min_area"
    t.float "max_area"
    t.integer "min_bedrooms"
    t.integer "max_bedrooms"
    t.integer "min_suites"
    t.integer "max_suites"
    t.integer "min_parking"
    t.integer "max_parking"
    t.integer "min_bathrooms"
    t.integer "max_bathrooms"
    t.float "price_per_private_square_meter"
    t.string "status"
    t.integer "apts_per_floor"
    t.integer "number_of_floors"
    t.text "features"
    t.integer "stock"
    t.string "finality"
    t.datetime "orulo_updated_at"
    t.string "orulo_url"
    t.integer "developer_id"
    t.string "developer_name"
    t.integer "publisher_id"
    t.string "publisher_name"
    t.string "address_street_type"
    t.string "address_street"
    t.string "address_number"
    t.string "address_are"
    t.string "address_city"
    t.float "address_latitude"
    t.float "address_longitude"
    t.string "address_state"
    t.string "address_zip_code"
    t.boolean "opportunity_broker"
    t.boolean "opportunity_client"
    t.boolean "opportunity_exchange_units"
    t.integer "default_image_id"
    t.text "default_image_description"
    t.text "default_image_200x140"
    t.text "default_image_520x280"
    t.string "fav_user"
    t.string "fav_update_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "admin", default: false, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
