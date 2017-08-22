require 'test_helper'

class StatusDelExaminadoPsicosControllerTest < ActionController::TestCase
  setup do
    @status_del_examinado_psico = status_del_examinado_psicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_del_examinado_psicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_del_examinado_psico" do
    assert_difference('StatusDelExaminadoPsico.count') do
      post :create, status_del_examinado_psico: @status_del_examinado_psico.attributes
    end

    assert_redirected_to status_del_examinado_psico_path(assigns(:status_del_examinado_psico))
  end

  test "should show status_del_examinado_psico" do
    get :show, id: @status_del_examinado_psico.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_del_examinado_psico.to_param
    assert_response :success
  end

  test "should update status_del_examinado_psico" do
    put :update, id: @status_del_examinado_psico.to_param, status_del_examinado_psico: @status_del_examinado_psico.attributes
    assert_redirected_to status_del_examinado_psico_path(assigns(:status_del_examinado_psico))
  end

  test "should destroy status_del_examinado_psico" do
    assert_difference('StatusDelExaminadoPsico.count', -1) do
      delete :destroy, id: @status_del_examinado_psico.to_param
    end

    assert_redirected_to status_del_examinado_psicos_path
  end
end
