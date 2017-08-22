require 'test_helper'

class PeriodoParaIngresarsControllerTest < ActionController::TestCase
  setup do
    @periodo_para_ingresar = periodo_para_ingresars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:periodo_para_ingresars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create periodo_para_ingresar" do
    assert_difference('PeriodoParaIngresar.count') do
      post :create, periodo_para_ingresar: @periodo_para_ingresar.attributes
    end

    assert_redirected_to periodo_para_ingresar_path(assigns(:periodo_para_ingresar))
  end

  test "should show periodo_para_ingresar" do
    get :show, id: @periodo_para_ingresar.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @periodo_para_ingresar.to_param
    assert_response :success
  end

  test "should update periodo_para_ingresar" do
    put :update, id: @periodo_para_ingresar.to_param, periodo_para_ingresar: @periodo_para_ingresar.attributes
    assert_redirected_to periodo_para_ingresar_path(assigns(:periodo_para_ingresar))
  end

  test "should destroy periodo_para_ingresar" do
    assert_difference('PeriodoParaIngresar.count', -1) do
      delete :destroy, id: @periodo_para_ingresar.to_param
    end

    assert_redirected_to periodo_para_ingresars_path
  end
end
