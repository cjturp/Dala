require 'test_helper'

class GameLevelControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get game_level_new_url
    assert_response :success
  end

end
