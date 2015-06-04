require 'test_helper'

class ConsumedCalsControllerTest < ActionController::TestCase
  setup do
    @consumed_cal = consumed_cals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consumed_cals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consumed_cal" do
    assert_difference('ConsumedCal.count') do
      post :create, consumed_cal: { calories: @consumed_cal.calories, calories_on: @consumed_cal.calories_on }
    end

    assert_redirected_to consumed_cal_path(assigns(:consumed_cal))
  end

  test "should show consumed_cal" do
    get :show, id: @consumed_cal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consumed_cal
    assert_response :success
  end

  test "should update consumed_cal" do
    patch :update, id: @consumed_cal, consumed_cal: { calories: @consumed_cal.calories, calories_on: @consumed_cal.calories_on }
    assert_redirected_to consumed_cal_path(assigns(:consumed_cal))
  end

  test "should destroy consumed_cal" do
    assert_difference('ConsumedCal.count', -1) do
      delete :destroy, id: @consumed_cal
    end

    assert_redirected_to consumed_cals_path
  end
end
