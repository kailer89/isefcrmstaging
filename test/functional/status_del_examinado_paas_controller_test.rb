require 'test_helper'

class StatusDelExaminadoPaasControllerTest < ActionController::TestCase
  setup do
    @status_del_examinado_paa = status_del_examinado_paas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_del_examinado_paas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_del_examinado_paa" do
    assert_difference('StatusDelExaminadoPaa.count') do
      post :create, status_del_examinado_paa: @status_del_examinado_paa.attributes
    end

    assert_redirected_to status_del_examinado_paa_path(assigns(:status_del_examinado_paa))
  end

  test "should show status_del_examinado_paa" do
    get :show, id: @status_del_examinado_paa.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_del_examinado_paa.to_param
    assert_response :success
  end

  test "should update status_del_examinado_paa" do
    put :update, id: @status_del_examinado_paa.to_param, status_del_examinado_paa: @status_del_examinado_paa.attributes
    assert_redirected_to status_del_examinado_paa_path(assigns(:status_del_examinado_paa))
  end

  test "should destroy status_del_examinado_paa" do
    assert_difference('StatusDelExaminadoPaa.count', -1) do
      delete :destroy, id: @status_del_examinado_paa.to_param
    end

    assert_redirected_to status_del_examinado_paas_path
  end
end
