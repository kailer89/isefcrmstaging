require 'test_helper'

class StatusRefPagoInscsControllerTest < ActionController::TestCase
  setup do
    @status_ref_pago_insc = status_ref_pago_inscs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_ref_pago_inscs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_ref_pago_insc" do
    assert_difference('StatusRefPagoInsc.count') do
      post :create, status_ref_pago_insc: @status_ref_pago_insc.attributes
    end

    assert_redirected_to status_ref_pago_insc_path(assigns(:status_ref_pago_insc))
  end

  test "should show status_ref_pago_insc" do
    get :show, id: @status_ref_pago_insc.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_ref_pago_insc.to_param
    assert_response :success
  end

  test "should update status_ref_pago_insc" do
    put :update, id: @status_ref_pago_insc.to_param, status_ref_pago_insc: @status_ref_pago_insc.attributes
    assert_redirected_to status_ref_pago_insc_path(assigns(:status_ref_pago_insc))
  end

  test "should destroy status_ref_pago_insc" do
    assert_difference('StatusRefPagoInsc.count', -1) do
      delete :destroy, id: @status_ref_pago_insc.to_param
    end

    assert_redirected_to status_ref_pago_inscs_path
  end
end
