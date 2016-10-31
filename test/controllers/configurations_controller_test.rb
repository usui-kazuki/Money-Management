require 'test_helper'

class ConfigurationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get tablereset" do
    get :tablereset
    assert_response :success
  end

end
