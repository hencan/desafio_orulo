require "application_system_test_case"

class FavsTest < ApplicationSystemTestCase
  setup do
    @fav = favs(:one)
  end

  test "visiting the index" do
    visit favs_url
    assert_selector "h1", text: "Favs"
  end

  test "creating a Fav" do
    visit favs_url
    click_on "New Fav"

    fill_in "Address are", with: @fav.address_are
    fill_in "Address city", with: @fav.address_city
    fill_in "Address latitude", with: @fav.address_latitude
    fill_in "Address longitude", with: @fav.address_longitude
    fill_in "Address number", with: @fav.address_number
    fill_in "Address state", with: @fav.address_state
    fill_in "Address street", with: @fav.address_street
    fill_in "Address street type", with: @fav.address_street_type
    fill_in "Address zip code", with: @fav.address_zip_code
    fill_in "Apts per floor", with: @fav.apts_per_floor
    fill_in "Default image 200x140", with: @fav.default_image_200x140
    fill_in "Default image 520x280", with: @fav.default_image_520x280
    fill_in "Default image description", with: @fav.default_image_description
    fill_in "Default image", with: @fav.default_image_id
    fill_in "Description", with: @fav.description
    fill_in "Developer", with: @fav.developer_id
    fill_in "Developer name", with: @fav.developer_name
    fill_in "Fav update at", with: @fav.fav_update_at
    fill_in "Fav user", with: @fav.fav_user
    fill_in "Features", with: @fav.features
    fill_in "Finality", with: @fav.finality
    fill_in "Max area", with: @fav.max_area
    fill_in "Max bathrooms", with: @fav.max_bathrooms
    fill_in "Max bedrooms", with: @fav.max_bedrooms
    fill_in "Max parking", with: @fav.max_parking
    fill_in "Max suites", with: @fav.max_suites
    fill_in "Min area", with: @fav.min_area
    fill_in "Min bathrooms", with: @fav.min_bathrooms
    fill_in "Min bedrooms", with: @fav.min_bedrooms
    fill_in "Min parking", with: @fav.min_parking
    fill_in "Min price", with: @fav.min_price
    fill_in "Min suites", with: @fav.min_suites
    fill_in "Name", with: @fav.name
    fill_in "Number of floors", with: @fav.number_of_floors
    fill_in "Opportunity broker", with: @fav.opportunity_broker
    fill_in "Opportunity client", with: @fav.opportunity_client
    fill_in "Opportunity exchange units", with: @fav.opportunity_exchange_units
    fill_in "Orulo", with: @fav.orulo_id
    fill_in "Orulo url", with: @fav.orulo_url
    fill_in "Price per private square meter", with: @fav.price_per_private_square_meter
    fill_in "Publisher", with: @fav.publisher_id
    fill_in "Publisher name", with: @fav.publisher_name
    fill_in "Status", with: @fav.status
    fill_in "Stock", with: @fav.stock
    fill_in "Updated at", with: @fav.updated_at
    click_on "Create Fav"

    assert_text "Fav was successfully created"
    click_on "Back"
  end

  test "updating a Fav" do
    visit favs_url
    click_on "Edit", match: :first

    fill_in "Address are", with: @fav.address_are
    fill_in "Address city", with: @fav.address_city
    fill_in "Address latitude", with: @fav.address_latitude
    fill_in "Address longitude", with: @fav.address_longitude
    fill_in "Address number", with: @fav.address_number
    fill_in "Address state", with: @fav.address_state
    fill_in "Address street", with: @fav.address_street
    fill_in "Address street type", with: @fav.address_street_type
    fill_in "Address zip code", with: @fav.address_zip_code
    fill_in "Apts per floor", with: @fav.apts_per_floor
    fill_in "Default image 200x140", with: @fav.default_image_200x140
    fill_in "Default image 520x280", with: @fav.default_image_520x280
    fill_in "Default image description", with: @fav.default_image_description
    fill_in "Default image", with: @fav.default_image_id
    fill_in "Description", with: @fav.description
    fill_in "Developer", with: @fav.developer_id
    fill_in "Developer name", with: @fav.developer_name
    fill_in "Fav update at", with: @fav.fav_update_at
    fill_in "Fav user", with: @fav.fav_user
    fill_in "Features", with: @fav.features
    fill_in "Finality", with: @fav.finality
    fill_in "Max area", with: @fav.max_area
    fill_in "Max bathrooms", with: @fav.max_bathrooms
    fill_in "Max bedrooms", with: @fav.max_bedrooms
    fill_in "Max parking", with: @fav.max_parking
    fill_in "Max suites", with: @fav.max_suites
    fill_in "Min area", with: @fav.min_area
    fill_in "Min bathrooms", with: @fav.min_bathrooms
    fill_in "Min bedrooms", with: @fav.min_bedrooms
    fill_in "Min parking", with: @fav.min_parking
    fill_in "Min price", with: @fav.min_price
    fill_in "Min suites", with: @fav.min_suites
    fill_in "Name", with: @fav.name
    fill_in "Number of floors", with: @fav.number_of_floors
    fill_in "Opportunity broker", with: @fav.opportunity_broker
    fill_in "Opportunity client", with: @fav.opportunity_client
    fill_in "Opportunity exchange units", with: @fav.opportunity_exchange_units
    fill_in "Orulo", with: @fav.orulo_id
    fill_in "Orulo url", with: @fav.orulo_url
    fill_in "Price per private square meter", with: @fav.price_per_private_square_meter
    fill_in "Publisher", with: @fav.publisher_id
    fill_in "Publisher name", with: @fav.publisher_name
    fill_in "Status", with: @fav.status
    fill_in "Stock", with: @fav.stock
    fill_in "Updated at", with: @fav.updated_at
    click_on "Update Fav"

    assert_text "Fav was successfully updated"
    click_on "Back"
  end

  test "destroying a Fav" do
    visit favs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fav was successfully destroyed"
  end
end
