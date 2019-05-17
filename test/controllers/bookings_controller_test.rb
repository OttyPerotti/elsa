require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get Property" do
    get bookings_Property_url
    assert_response :success
  end

end
