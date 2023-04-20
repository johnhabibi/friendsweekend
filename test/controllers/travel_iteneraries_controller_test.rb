require "test_helper"

class TravelItenerariesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get travel_iteneraries_index_url
    assert_response :success
  end
end
