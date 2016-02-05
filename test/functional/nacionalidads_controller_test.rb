require 'test_helper'

class NacionalidadsControllerTest < ActionController::TestCase
  setup do
    @nacionalidad = nacionalidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nacionalidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nacionalidad" do
    assert_difference('Nacionalidad.count') do
      post :create, nacionalidad: @nacionalidad.attributes
    end

    assert_redirected_to nacionalidad_path(assigns(:nacionalidad))
  end

  test "should show nacionalidad" do
    get :show, id: @nacionalidad.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nacionalidad.to_param
    assert_response :success
  end

  test "should update nacionalidad" do
    put :update, id: @nacionalidad.to_param, nacionalidad: @nacionalidad.attributes
    assert_redirected_to nacionalidad_path(assigns(:nacionalidad))
  end

  test "should destroy nacionalidad" do
    assert_difference('Nacionalidad.count', -1) do
      delete :destroy, id: @nacionalidad.to_param
    end

    assert_redirected_to nacionalidads_path
  end
end
