require 'test_helper'

class GroupShotsControllerTest < ActionController::TestCase
  setup do
    @group_shot = group_shots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_shots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_shot" do
    assert_difference('GroupShot.count') do
      post :create, group_shot: {  }
    end

    assert_redirected_to group_shot_path(assigns(:group_shot))
  end

  test "should show group_shot" do
    get :show, id: @group_shot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_shot
    assert_response :success
  end

  test "should update group_shot" do
    patch :update, id: @group_shot, group_shot: {  }
    assert_redirected_to group_shot_path(assigns(:group_shot))
  end

  test "should destroy group_shot" do
    assert_difference('GroupShot.count', -1) do
      delete :destroy, id: @group_shot
    end

    assert_redirected_to group_shots_path
  end
end
