require 'test_helper'

class SelfiesControllerTest < ActionController::TestCase
  setup do
    @selfie = selfies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selfies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selfie" do
    assert_difference('Selfie.count') do
      post :create, selfie: {  }
    end

    assert_redirected_to selfie_path(assigns(:selfie))
  end

  test "should show selfie" do
    get :show, id: @selfie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @selfie
    assert_response :success
  end

  test "should update selfie" do
    patch :update, id: @selfie, selfie: {  }
    assert_redirected_to selfie_path(assigns(:selfie))
  end

  test "should destroy selfie" do
    assert_difference('Selfie.count', -1) do
      delete :destroy, id: @selfie
    end

    assert_redirected_to selfies_path
  end
end
