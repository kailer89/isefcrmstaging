require 'test_helper'

class ComentariosEstrategiaControllerTest < ActionController::TestCase
  setup do
    @comentarios_estrategium = comentarios_estrategia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comentarios_estrategia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comentarios_estrategium" do
    assert_difference('ComentariosEstrategium.count') do
      post :create, comentarios_estrategium: @comentarios_estrategium.attributes
    end

    assert_redirected_to comentarios_estrategium_path(assigns(:comentarios_estrategium))
  end

  test "should show comentarios_estrategium" do
    get :show, id: @comentarios_estrategium.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comentarios_estrategium.to_param
    assert_response :success
  end

  test "should update comentarios_estrategium" do
    put :update, id: @comentarios_estrategium.to_param, comentarios_estrategium: @comentarios_estrategium.attributes
    assert_redirected_to comentarios_estrategium_path(assigns(:comentarios_estrategium))
  end

  test "should destroy comentarios_estrategium" do
    assert_difference('ComentariosEstrategium.count', -1) do
      delete :destroy, id: @comentarios_estrategium.to_param
    end

    assert_redirected_to comentarios_estrategia_path
  end
end
