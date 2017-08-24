require 'test_helper'

class PossibleAnswersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get possible_answers_new_url
    assert_response :success
  end

end
