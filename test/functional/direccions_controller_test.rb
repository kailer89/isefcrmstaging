require 'test_helper'

class DireccionsControllerTest < ActionController::TestCase
  setup do
    @direccion = direccions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:direccions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direccion" do
    assert_difference('Direccion.count') do
      post :create, direccion: @direccion.attributes
    end

    assert_redirected_to direccion_path(assigns(:direccion))
  end

  test "should show direccion" do
    get :show, id: @direccion.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @direccion.to_param
    assert_response :success
  end

  test "should update direccion" do
    put :update, id: @direccion.to_param, direccion: @direccion.attributes
    assert_redirected_to direccion_path(assigns(:direccion))
  end

  test "should destroy direccion" do
    assert_difference('Direccion.count', -1) do
      delete :destroy, id: @direccion.to_param
    end

    assert_redirected_to direccions_path
  end
end
