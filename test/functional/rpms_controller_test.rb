require 'test_helper'

class RpmsControllerTest < ActionController::TestCase
  setup do
    @rpm = rpms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rpms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rpm" do
    assert_difference('Rpm.count') do
      post :create, rpm: @rpm.attributes
    end

    assert_redirected_to rpm_path(assigns(:rpm))
  end

  test "should show rpm" do
    get :show, id: @rpm.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rpm.to_param
    assert_response :success
  end

  test "should update rpm" do
    put :update, id: @rpm.to_param, rpm: @rpm.attributes
    assert_redirected_to rpm_path(assigns(:rpm))
  end

  test "should destroy rpm" do
    assert_difference('Rpm.count', -1) do
      delete :destroy, id: @rpm.to_param
    end

    assert_redirected_to rpms_path
  end
end
