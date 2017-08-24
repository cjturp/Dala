require 'test_helper'

class ExpPointsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get exp_points_new_url
    assert_response :success
  end

end
