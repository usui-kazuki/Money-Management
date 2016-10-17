require 'test_helper'

class LoginusersControllerTest < ActionController::TestCase
  setup do
    @loginuser = loginusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loginusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loginuser" do
    assert_difference('Loginuser.count') do
      post :create, loginuser: { password: @loginuser.password, username: @loginuser.username }
    end

    assert_redirected_to loginuser_path(assigns(:loginuser))
  end

  test "should show loginuser" do
    get :show, id: @loginuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loginuser
    assert_response :success
  end

  test "should update loginuser" do
    patch :update, id: @loginuser, loginuser: { password: @loginuser.password, username: @loginuser.username }
    assert_redirected_to loginuser_path(assigns(:loginuser))
  end

  test "should destroy loginuser" do
    assert_difference('Loginuser.count', -1) do
      delete :destroy, id: @loginuser
    end

    assert_redirected_to loginusers_path
  end
end
