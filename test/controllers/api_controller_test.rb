require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get availablestarttime" do
    get api_availablestarttime_url
    assert_response :success
  end

end
