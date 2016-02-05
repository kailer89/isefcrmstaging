require 'test_helper'

class PurgesControllerTest < ActionController::TestCase
  setup do
    @purge = purges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purge" do
    assert_difference('Purge.count') do
      post :create, purge: @purge.attributes
    end

    assert_redirected_to purge_path(assigns(:purge))
  end

  test "should show purge" do
    get :show, id: @purge.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purge.to_param
    assert_response :success
  end

  test "should update purge" do
    put :update, id: @purge.to_param, purge: @purge.attributes
    assert_redirected_to purge_path(assigns(:purge))
  end

  test "should destroy purge" do
    assert_difference('Purge.count', -1) do
      delete :destroy, id: @purge.to_param
    end

    assert_redirected_to purges_path
  end
end
