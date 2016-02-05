require 'test_helper'

class StatusDelExaminadoEntrevistaControllerTest < ActionController::TestCase
  setup do
    @status_del_examinado_entrevistum = status_del_examinado_entrevista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_del_examinado_entrevista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_del_examinado_entrevistum" do
    assert_difference('StatusDelExaminadoEntrevistum.count') do
      post :create, status_del_examinado_entrevistum: @status_del_examinado_entrevistum.attributes
    end

    assert_redirected_to status_del_examinado_entrevistum_path(assigns(:status_del_examinado_entrevistum))
  end

  test "should show status_del_examinado_entrevistum" do
    get :show, id: @status_del_examinado_entrevistum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_del_examinado_entrevistum.to_param
    assert_response :success
  end

  test "should update status_del_examinado_entrevistum" do
    put :update, id: @status_del_examinado_entrevistum.to_param, status_del_examinado_entrevistum: @status_del_examinado_entrevistum.attributes
    assert_redirected_to status_del_examinado_entrevistum_path(assigns(:status_del_examinado_entrevistum))
  end

  test "should destroy status_del_examinado_entrevistum" do
    assert_difference('StatusDelExaminadoEntrevistum.count', -1) do
      delete :destroy, id: @status_del_examinado_entrevistum.to_param
    end

    assert_redirected_to status_del_examinado_entrevista_path
  end
end
