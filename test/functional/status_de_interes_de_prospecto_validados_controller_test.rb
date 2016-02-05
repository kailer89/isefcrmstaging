require 'test_helper'

class StatusDeInteresDeProspectoValidadosControllerTest < ActionController::TestCase
  setup do
    @status_de_interes_de_prospecto_validado = status_de_interes_de_prospecto_validados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_de_interes_de_prospecto_validados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_de_interes_de_prospecto_validado" do
    assert_difference('StatusDeInteresDeProspectoValidado.count') do
      post :create, status_de_interes_de_prospecto_validado: @status_de_interes_de_prospecto_validado.attributes
    end

    assert_redirected_to status_de_interes_de_prospecto_validado_path(assigns(:status_de_interes_de_prospecto_validado))
  end

  test "should show status_de_interes_de_prospecto_validado" do
    get :show, id: @status_de_interes_de_prospecto_validado.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_de_interes_de_prospecto_validado.to_param
    assert_response :success
  end

  test "should update status_de_interes_de_prospecto_validado" do
    put :update, id: @status_de_interes_de_prospecto_validado.to_param, status_de_interes_de_prospecto_validado: @status_de_interes_de_prospecto_validado.attributes
    assert_redirected_to status_de_interes_de_prospecto_validado_path(assigns(:status_de_interes_de_prospecto_validado))
  end

  test "should destroy status_de_interes_de_prospecto_validado" do
    assert_difference('StatusDeInteresDeProspectoValidado.count', -1) do
      delete :destroy, id: @status_de_interes_de_prospecto_validado.to_param
    end

    assert_redirected_to status_de_interes_de_prospecto_validados_path
  end
end
