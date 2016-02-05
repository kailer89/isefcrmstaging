require 'test_helper'

class EfectividadsControllerTest < ActionController::TestCase
  setup do
    @efectividad = efectividads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:efectividads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create efectividad" do
    assert_difference('Efectividad.count') do
      post :create, efectividad: @efectividad.attributes
    end

    assert_redirected_to efectividad_path(assigns(:efectividad))
  end

  test "should show efectividad" do
    get :show, id: @efectividad.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @efectividad.to_param
    assert_response :success
  end

  test "should update efectividad" do
    put :update, id: @efectividad.to_param, efectividad: @efectividad.attributes
    assert_redirected_to efectividad_path(assigns(:efectividad))
  end

  test "should destroy efectividad" do
    assert_difference('Efectividad.count', -1) do
      delete :destroy, id: @efectividad.to_param
    end

    assert_redirected_to efectividads_path
  end
end
