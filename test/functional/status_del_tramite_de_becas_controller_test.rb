require 'test_helper'

class StatusDelTramiteDeBecasControllerTest < ActionController::TestCase
  setup do
    @status_del_tramite_de_beca = status_del_tramite_de_becas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_del_tramite_de_becas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_del_tramite_de_beca" do
    assert_difference('StatusDelTramiteDeBeca.count') do
      post :create, status_del_tramite_de_beca: @status_del_tramite_de_beca.attributes
    end

    assert_redirected_to status_del_tramite_de_beca_path(assigns(:status_del_tramite_de_beca))
  end

  test "should show status_del_tramite_de_beca" do
    get :show, id: @status_del_tramite_de_beca.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_del_tramite_de_beca.to_param
    assert_response :success
  end

  test "should update status_del_tramite_de_beca" do
    put :update, id: @status_del_tramite_de_beca.to_param, status_del_tramite_de_beca: @status_del_tramite_de_beca.attributes
    assert_redirected_to status_del_tramite_de_beca_path(assigns(:status_del_tramite_de_beca))
  end

  test "should destroy status_del_tramite_de_beca" do
    assert_difference('StatusDelTramiteDeBeca.count', -1) do
      delete :destroy, id: @status_del_tramite_de_beca.to_param
    end

    assert_redirected_to status_del_tramite_de_becas_path
  end
end
