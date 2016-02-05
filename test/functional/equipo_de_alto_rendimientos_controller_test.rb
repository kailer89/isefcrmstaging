require 'test_helper'

class EquipoDeAltoRendimientosControllerTest < ActionController::TestCase
  setup do
    @equipo_de_alto_rendimiento = equipo_de_alto_rendimientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipo_de_alto_rendimientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipo_de_alto_rendimiento" do
    assert_difference('EquipoDeAltoRendimiento.count') do
      post :create, equipo_de_alto_rendimiento: @equipo_de_alto_rendimiento.attributes
    end

    assert_redirected_to equipo_de_alto_rendimiento_path(assigns(:equipo_de_alto_rendimiento))
  end

  test "should show equipo_de_alto_rendimiento" do
    get :show, id: @equipo_de_alto_rendimiento.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipo_de_alto_rendimiento.to_param
    assert_response :success
  end

  test "should update equipo_de_alto_rendimiento" do
    put :update, id: @equipo_de_alto_rendimiento.to_param, equipo_de_alto_rendimiento: @equipo_de_alto_rendimiento.attributes
    assert_redirected_to equipo_de_alto_rendimiento_path(assigns(:equipo_de_alto_rendimiento))
  end

  test "should destroy equipo_de_alto_rendimiento" do
    assert_difference('EquipoDeAltoRendimiento.count', -1) do
      delete :destroy, id: @equipo_de_alto_rendimiento.to_param
    end

    assert_redirected_to equipo_de_alto_rendimientos_path
  end
end
