require 'test_helper'

class UltimoGradoDeEstudiosControllerTest < ActionController::TestCase
  setup do
    @ultimo_grado_de_estudio = ultimo_grado_de_estudios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ultimo_grado_de_estudios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ultimo_grado_de_estudio" do
    assert_difference('UltimoGradoDeEstudio.count') do
      post :create, ultimo_grado_de_estudio: @ultimo_grado_de_estudio.attributes
    end

    assert_redirected_to ultimo_grado_de_estudio_path(assigns(:ultimo_grado_de_estudio))
  end

  test "should show ultimo_grado_de_estudio" do
    get :show, id: @ultimo_grado_de_estudio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ultimo_grado_de_estudio.to_param
    assert_response :success
  end

  test "should update ultimo_grado_de_estudio" do
    put :update, id: @ultimo_grado_de_estudio.to_param, ultimo_grado_de_estudio: @ultimo_grado_de_estudio.attributes
    assert_redirected_to ultimo_grado_de_estudio_path(assigns(:ultimo_grado_de_estudio))
  end

  test "should destroy ultimo_grado_de_estudio" do
    assert_difference('UltimoGradoDeEstudio.count', -1) do
      delete :destroy, id: @ultimo_grado_de_estudio.to_param
    end

    assert_redirected_to ultimo_grado_de_estudios_path
  end
end
