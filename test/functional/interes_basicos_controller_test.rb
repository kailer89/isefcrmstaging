require 'test_helper'

class InteresBasicosControllerTest < ActionController::TestCase
  setup do
    @interes_basico = interes_basicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interes_basicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interes_basico" do
    assert_difference('InteresBasico.count') do
      post :create, interes_basico: @interes_basico.attributes
    end

    assert_redirected_to interes_basico_path(assigns(:interes_basico))
  end

  test "should show interes_basico" do
    get :show, id: @interes_basico.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interes_basico.to_param
    assert_response :success
  end

  test "should update interes_basico" do
    put :update, id: @interes_basico.to_param, interes_basico: @interes_basico.attributes
    assert_redirected_to interes_basico_path(assigns(:interes_basico))
  end

  test "should destroy interes_basico" do
    assert_difference('InteresBasico.count', -1) do
      delete :destroy, id: @interes_basico.to_param
    end

    assert_redirected_to interes_basicos_path
  end
end
