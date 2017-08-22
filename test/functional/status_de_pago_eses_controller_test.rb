require 'test_helper'

class StatusDePagoEsesControllerTest < ActionController::TestCase
  setup do
    @status_de_pago_ese = status_de_pago_eses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_de_pago_eses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_de_pago_ese" do
    assert_difference('StatusDePagoEse.count') do
      post :create, status_de_pago_ese: @status_de_pago_ese.attributes
    end

    assert_redirected_to status_de_pago_ese_path(assigns(:status_de_pago_ese))
  end

  test "should show status_de_pago_ese" do
    get :show, id: @status_de_pago_ese.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_de_pago_ese.to_param
    assert_response :success
  end

  test "should update status_de_pago_ese" do
    put :update, id: @status_de_pago_ese.to_param, status_de_pago_ese: @status_de_pago_ese.attributes
    assert_redirected_to status_de_pago_ese_path(assigns(:status_de_pago_ese))
  end

  test "should destroy status_de_pago_ese" do
    assert_difference('StatusDePagoEse.count', -1) do
      delete :destroy, id: @status_de_pago_ese.to_param
    end

    assert_redirected_to status_de_pago_eses_path
  end
end
