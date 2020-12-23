require "test_helper"

class DetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get detail" do
    get details_detail_url
    assert_response :success
  end
end
