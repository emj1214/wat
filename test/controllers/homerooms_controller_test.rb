require 'test_helper'

class HomeroomsControllerTest < ActionController::TestCase
  setup do
    @homeroom = homerooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homerooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homeroom" do
    assert_difference('Homeroom.count') do
      post :create, homeroom: { goal: @homeroom.goal, name: @homeroom.name, teacher: @homeroom.teacher }
    end

    assert_redirected_to homeroom_path(assigns(:homeroom))
  end

  test "should show homeroom" do
    get :show, id: @homeroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homeroom
    assert_response :success
  end

  test "should update homeroom" do
    patch :update, id: @homeroom, homeroom: { goal: @homeroom.goal, name: @homeroom.name, teacher: @homeroom.teacher }
    assert_redirected_to homeroom_path(assigns(:homeroom))
  end

  test "should destroy homeroom" do
    assert_difference('Homeroom.count', -1) do
      delete :destroy, id: @homeroom
    end

    assert_redirected_to homerooms_path
  end
end
