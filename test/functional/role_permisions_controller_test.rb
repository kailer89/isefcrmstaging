require 'test_helper'

class RolePermisionsControllerTest < ActionController::TestCase
  setup do
    @role_permision = role_permisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:role_permisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create role_permision" do
    assert_difference('RolePermision.count') do
      post :create, role_permision: @role_permision.attributes
    end

    assert_redirected_to role_permision_path(assigns(:role_permision))
  end

  test "should show role_permision" do
    get :show, id: @role_permision.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @role_permision.to_param
    assert_response :success
  end

  test "should update role_permision" do
    put :update, id: @role_permision.to_param, role_permision: @role_permision.attributes
    assert_redirected_to role_permision_path(assigns(:role_permision))
  end

  test "should destroy role_permision" do
    assert_difference('RolePermision.count', -1) do
      delete :destroy, id: @role_permision.to_param
    end

    assert_redirected_to role_permisions_path
  end
end
