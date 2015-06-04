require 'test_helper'

class ExerciseTypesControllerTest < ActionController::TestCase
  setup do
    @exercise_type = exercise_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise type" do
    assert_difference('ExerciseType.count') do
      post :create, exercise_type: { name: @exercise_type.name }
    end

    assert_redirected_to exercise_type_path(assigns(:exercise_type))
  end

  test "should show exercise type" do
    get :show, id: @exercise_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise_type
    assert_response :success
  end

  test "should update exercise_type" do
    patch :update, id: @exercise_type, exercise_type: { name: @exercise_type.name }
    assert_redirected_to exercise_type_path(assigns(:exercise_type))
  end

  test "should get destroy" do
    :destroy
    assert_response :success
  end

end
