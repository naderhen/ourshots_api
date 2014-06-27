require 'test_helper'

class DeviceTokensControllerTest < ActionController::TestCase
  setup do
    @device_token = device_tokens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_tokens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_token" do
    assert_difference('DeviceToken.count') do
      post :create, device_token: {  }
    end

    assert_redirected_to device_token_path(assigns(:device_token))
  end

  test "should show device_token" do
    get :show, id: @device_token
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device_token
    assert_response :success
  end

  test "should update device_token" do
    patch :update, id: @device_token, device_token: {  }
    assert_redirected_to device_token_path(assigns(:device_token))
  end

  test "should destroy device_token" do
    assert_difference('DeviceToken.count', -1) do
      delete :destroy, id: @device_token
    end

    assert_redirected_to device_tokens_path
  end
end
