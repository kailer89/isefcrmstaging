require 'test_helper'

class MunicipioDeLaPreparatoriaOUniversidadDeOrigensControllerTest < ActionController::TestCase
  setup do
    @municipio_de_la_preparatoria_o_universidad_de_origen = municipio_de_la_preparatoria_o_universidad_de_origens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:municipio_de_la_preparatoria_o_universidad_de_origens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create municipio_de_la_preparatoria_o_universidad_de_origen" do
    assert_difference('MunicipioDeLaPreparatoriaOUniversidadDeOrigen.count') do
      post :create, municipio_de_la_preparatoria_o_universidad_de_origen: @municipio_de_la_preparatoria_o_universidad_de_origen.attributes
    end

    assert_redirected_to municipio_de_la_preparatoria_o_universidad_de_origen_path(assigns(:municipio_de_la_preparatoria_o_universidad_de_origen))
  end

  test "should show municipio_de_la_preparatoria_o_universidad_de_origen" do
    get :show, id: @municipio_de_la_preparatoria_o_universidad_de_origen.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @municipio_de_la_preparatoria_o_universidad_de_origen.to_param
    assert_response :success
  end

  test "should update municipio_de_la_preparatoria_o_universidad_de_origen" do
    put :update, id: @municipio_de_la_preparatoria_o_universidad_de_origen.to_param, municipio_de_la_preparatoria_o_universidad_de_origen: @municipio_de_la_preparatoria_o_universidad_de_origen.attributes
    assert_redirected_to municipio_de_la_preparatoria_o_universidad_de_origen_path(assigns(:municipio_de_la_preparatoria_o_universidad_de_origen))
  end

  test "should destroy municipio_de_la_preparatoria_o_universidad_de_origen" do
    assert_difference('MunicipioDeLaPreparatoriaOUniversidadDeOrigen.count', -1) do
      delete :destroy, id: @municipio_de_la_preparatoria_o_universidad_de_origen.to_param
    end

    assert_redirected_to municipio_de_la_preparatoria_o_universidad_de_origens_path
  end
end
