require 'test_helper'

class RestroomsControllerTest < ActionController::TestCase
  setup do
    @restroom = restrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restroom" do
    assert_difference('Restroom.count') do
      post :create, restroom: { building_id: @restroom.building_id, numbered: @restroom.numbered, typ: @restroom.typ }
    end

    assert_redirected_to restroom_path(assigns(:restroom))
  end

  test "should show restroom" do
    get :show, id: @restroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restroom
    assert_response :success
  end

  test "should update restroom" do
    patch :update, id: @restroom, restroom: { building_id: @restroom.building_id, numbered: @restroom.numbered, typ: @restroom.typ }
    assert_redirected_to restroom_path(assigns(:restroom))
  end

  test "should destroy restroom" do
    assert_difference('Restroom.count', -1) do
      delete :destroy, id: @restroom
    end

    assert_redirected_to restrooms_path
  end
end
