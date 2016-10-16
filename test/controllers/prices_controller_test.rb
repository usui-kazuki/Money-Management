require 'test_helper'

class PricesControllerTest < ActionController::TestCase
  setup do
    @price = prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create price" do
    assert_difference('Price.count') do
      post :create, price: { category_id: @price.category_id, date: @price.date, familyuser_id: @price.familyuser_id, loginuser_id: @price.loginuser_id, memo: @price.memo, payment: @price.payment, price: @price.price, type: @price.type }
    end

    assert_redirected_to price_path(assigns(:price))
  end

  test "should show price" do
    get :show, id: @price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @price
    assert_response :success
  end

  test "should update price" do
    patch :update, id: @price, price: { category_id: @price.category_id, date: @price.date, familyuser_id: @price.familyuser_id, loginuser_id: @price.loginuser_id, memo: @price.memo, payment: @price.payment, price: @price.price, type: @price.type }
    assert_redirected_to price_path(assigns(:price))
  end

  test "should destroy price" do
    assert_difference('Price.count', -1) do
      delete :destroy, id: @price
    end

    assert_redirected_to prices_path
  end
end
