require 'test_helper'

class StatusDePagoDeExamenDeAdmisionsControllerTest < ActionController::TestCase
  setup do
    @status_de_pago_de_examen_de_admision = status_de_pago_de_examen_de_admisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_de_pago_de_examen_de_admisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_de_pago_de_examen_de_admision" do
    assert_difference('StatusDePagoDeExamenDeAdmision.count') do
      post :create, status_de_pago_de_examen_de_admision: @status_de_pago_de_examen_de_admision.attributes
    end

    assert_redirected_to status_de_pago_de_examen_de_admision_path(assigns(:status_de_pago_de_examen_de_admision))
  end

  test "should show status_de_pago_de_examen_de_admision" do
    get :show, id: @status_de_pago_de_examen_de_admision.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_de_pago_de_examen_de_admision.to_param
    assert_response :success
  end

  test "should update status_de_pago_de_examen_de_admision" do
    put :update, id: @status_de_pago_de_examen_de_admision.to_param, status_de_pago_de_examen_de_admision: @status_de_pago_de_examen_de_admision.attributes
    assert_redirected_to status_de_pago_de_examen_de_admision_path(assigns(:status_de_pago_de_examen_de_admision))
  end

  test "should destroy status_de_pago_de_examen_de_admision" do
    assert_difference('StatusDePagoDeExamenDeAdmision.count', -1) do
      delete :destroy, id: @status_de_pago_de_examen_de_admision.to_param
    end

    assert_redirected_to status_de_pago_de_examen_de_admisions_path
  end
end
