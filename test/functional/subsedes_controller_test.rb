require 'test_helper'

class SubsedesControllerTest < ActionController::TestCase
  setup do
    @subsede = subsedes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subsedes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subsede" do
    assert_difference('Subsede.count') do
      post :create, subsede: @subsede.attributes
    end

    assert_redirected_to subsede_path(assigns(:subsede))
  end

  test "should show subsede" do
    get :show, id: @subsede.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subsede.to_param
    assert_response :success
  end

  test "should update subsede" do
    put :update, id: @subsede.to_param, subsede: @subsede.attributes
    assert_redirected_to subsede_path(assigns(:subsede))
  end

  test "should destroy subsede" do
    assert_difference('Subsede.count', -1) do
      delete :destroy, id: @subsede.to_param
    end

    assert_redirected_to subsedes_path
  end
end
