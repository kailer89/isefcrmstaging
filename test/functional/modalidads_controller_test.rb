require 'test_helper'

class ModalidadsControllerTest < ActionController::TestCase
  setup do
    @modalidad = modalidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modalidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modalidad" do
    assert_difference('Modalidad.count') do
      post :create, modalidad: @modalidad.attributes
    end

    assert_redirected_to modalidad_path(assigns(:modalidad))
  end

  test "should show modalidad" do
    get :show, id: @modalidad.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modalidad.to_param
    assert_response :success
  end

  test "should update modalidad" do
    put :update, id: @modalidad.to_param, modalidad: @modalidad.attributes
    assert_redirected_to modalidad_path(assigns(:modalidad))
  end

  test "should destroy modalidad" do
    assert_difference('Modalidad.count', -1) do
      delete :destroy, id: @modalidad.to_param
    end

    assert_redirected_to modalidads_path
  end
end
