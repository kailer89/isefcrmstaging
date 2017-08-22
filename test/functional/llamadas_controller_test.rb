require 'test_helper'

class LlamadasControllerTest < ActionController::TestCase
  setup do
    @llamada = llamadas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:llamadas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create llamada" do
    assert_difference('Llamada.count') do
      post :create, llamada: @llamada.attributes
    end

    assert_redirected_to llamada_path(assigns(:llamada))
  end

  test "should show llamada" do
    get :show, id: @llamada.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @llamada.to_param
    assert_response :success
  end

  test "should update llamada" do
    put :update, id: @llamada.to_param, llamada: @llamada.attributes
    assert_redirected_to llamada_path(assigns(:llamada))
  end

  test "should destroy llamada" do
    assert_difference('Llamada.count', -1) do
      delete :destroy, id: @llamada.to_param
    end

    assert_redirected_to llamadas_path
  end
end
