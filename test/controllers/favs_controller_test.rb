require "test_helper"

class FavsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fav = favs(:one)
  end

  test "should get index" do
    get favs_url
    assert_response :success
  end

  test "should get new" do
    get new_fav_url
    assert_response :success
  end

  test "should create fav" do
    assert_difference('Fav.count') do
      post favs_url, params: { fav: { address_are: @fav.address_are, address_city: @fav.address_city, address_latitude: @fav.address_latitude, address_longitude: @fav.address_longitude, address_number: @fav.address_number, address_state: @fav.address_state, address_street: @fav.address_street, address_street_type: @fav.address_street_type, address_zip_code: @fav.address_zip_code, apts_per_floor: @fav.apts_per_floor, default_image_200x140: @fav.default_image_200x140, default_image_520x280: @fav.default_image_520x280, default_image_description: @fav.default_image_description, default_image_id: @fav.default_image_id, description: @fav.description, developer_id: @fav.developer_id, developer_name: @fav.developer_name, fav_update_at: @fav.fav_update_at, fav_user: @fav.fav_user, features: @fav.features, finality: @fav.finality, max_area: @fav.max_area, max_bathrooms: @fav.max_bathrooms, max_bedrooms: @fav.max_bedrooms, max_parking: @fav.max_parking, max_suites: @fav.max_suites, min_area: @fav.min_area, min_bathrooms: @fav.min_bathrooms, min_bedrooms: @fav.min_bedrooms, min_parking: @fav.min_parking, min_price: @fav.min_price, min_suites: @fav.min_suites, name: @fav.name, number_of_floors: @fav.number_of_floors, opportunity_broker: @fav.opportunity_broker, opportunity_client: @fav.opportunity_client, opportunity_exchange_units: @fav.opportunity_exchange_units, orulo_id: @fav.orulo_id, orulo_url: @fav.orulo_url, price_per_private_square_meter: @fav.price_per_private_square_meter, publisher_id: @fav.publisher_id, publisher_name: @fav.publisher_name, status: @fav.status, stock: @fav.stock, updated_at: @fav.updated_at } }
    end

    assert_redirected_to fav_url(Fav.last)
  end

  test "should show fav" do
    get fav_url(@fav)
    assert_response :success
  end

  test "should get edit" do
    get edit_fav_url(@fav)
    assert_response :success
  end

  test "should update fav" do
    patch fav_url(@fav), params: { fav: { address_are: @fav.address_are, address_city: @fav.address_city, address_latitude: @fav.address_latitude, address_longitude: @fav.address_longitude, address_number: @fav.address_number, address_state: @fav.address_state, address_street: @fav.address_street, address_street_type: @fav.address_street_type, address_zip_code: @fav.address_zip_code, apts_per_floor: @fav.apts_per_floor, default_image_200x140: @fav.default_image_200x140, default_image_520x280: @fav.default_image_520x280, default_image_description: @fav.default_image_description, default_image_id: @fav.default_image_id, description: @fav.description, developer_id: @fav.developer_id, developer_name: @fav.developer_name, fav_update_at: @fav.fav_update_at, fav_user: @fav.fav_user, features: @fav.features, finality: @fav.finality, max_area: @fav.max_area, max_bathrooms: @fav.max_bathrooms, max_bedrooms: @fav.max_bedrooms, max_parking: @fav.max_parking, max_suites: @fav.max_suites, min_area: @fav.min_area, min_bathrooms: @fav.min_bathrooms, min_bedrooms: @fav.min_bedrooms, min_parking: @fav.min_parking, min_price: @fav.min_price, min_suites: @fav.min_suites, name: @fav.name, number_of_floors: @fav.number_of_floors, opportunity_broker: @fav.opportunity_broker, opportunity_client: @fav.opportunity_client, opportunity_exchange_units: @fav.opportunity_exchange_units, orulo_id: @fav.orulo_id, orulo_url: @fav.orulo_url, price_per_private_square_meter: @fav.price_per_private_square_meter, publisher_id: @fav.publisher_id, publisher_name: @fav.publisher_name, status: @fav.status, stock: @fav.stock, updated_at: @fav.updated_at } }
    assert_redirected_to fav_url(@fav)
  end

  test "should destroy fav" do
    assert_difference('Fav.count', -1) do
      delete fav_url(@fav)
    end

    assert_redirected_to favs_url
  end
end
