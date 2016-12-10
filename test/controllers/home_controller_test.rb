require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get landpage" do
    get :landpage
    assert_response :success
  end

end
