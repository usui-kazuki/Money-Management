require 'test_helper'

class FamilyusersControllerTest < ActionController::TestCase
  setup do
    @familyuser = familyusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:familyusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create familyuser" do
    assert_difference('Familyuser.count') do
      post :create, familyuser: { loginuser_id: @familyuser.loginuser_id, name: @familyuser.name }
    end

    assert_redirected_to familyuser_path(assigns(:familyuser))
  end

  test "should show familyuser" do
    get :show, id: @familyuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @familyuser
    assert_response :success
  end

  test "should update familyuser" do
    patch :update, id: @familyuser, familyuser: { loginuser_id: @familyuser.loginuser_id, name: @familyuser.name }
    assert_redirected_to familyuser_path(assigns(:familyuser))
  end

  test "should destroy familyuser" do
    assert_difference('Familyuser.count', -1) do
      delete :destroy, id: @familyuser
    end

    assert_redirected_to familyusers_path
  end
end
