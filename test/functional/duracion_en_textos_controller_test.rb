require 'test_helper'

class DuracionEnTextosControllerTest < ActionController::TestCase
  setup do
    @duracion_en_texto = duracion_en_textos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:duracion_en_textos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create duracion_en_texto" do
    assert_difference('DuracionEnTexto.count') do
      post :create, duracion_en_texto: @duracion_en_texto.attributes
    end

    assert_redirected_to duracion_en_texto_path(assigns(:duracion_en_texto))
  end

  test "should show duracion_en_texto" do
    get :show, id: @duracion_en_texto.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @duracion_en_texto.to_param
    assert_response :success
  end

  test "should update duracion_en_texto" do
    put :update, id: @duracion_en_texto.to_param, duracion_en_texto: @duracion_en_texto.attributes
    assert_redirected_to duracion_en_texto_path(assigns(:duracion_en_texto))
  end

  test "should destroy duracion_en_texto" do
    assert_difference('DuracionEnTexto.count', -1) do
      delete :destroy, id: @duracion_en_texto.to_param
    end

    assert_redirected_to duracion_en_textos_path
  end
end
