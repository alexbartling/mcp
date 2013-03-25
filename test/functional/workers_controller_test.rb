require 'test_helper'

class WorkersControllerTest < ActionController::TestCase
  test "should get scrape_plates" do
    get :scrape_plates
    assert_response :success
  end

end
