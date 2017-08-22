require 'test_helper'

class StatusDelAdmitidosControllerTest < ActionController::TestCase
  setup do
    @status_del_admitido = status_del_admitidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_del_admitidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_del_admitido" do
    assert_difference('StatusDelAdmitido.count') do
      post :create, status_del_admitido: @status_del_admitido.attributes
    end

    assert_redirected_to status_del_admitido_path(assigns(:status_del_admitido))
  end

  test "should show status_del_admitido" do
    get :show, id: @status_del_admitido.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_del_admitido.to_param
    assert_response :success
  end

  test "should update status_del_admitido" do
    put :update, id: @status_del_admitido.to_param, status_del_admitido: @status_del_admitido.attributes
    assert_redirected_to status_del_admitido_path(assigns(:status_del_admitido))
  end

  test "should destroy status_del_admitido" do
    assert_difference('StatusDelAdmitido.count', -1) do
      delete :destroy, id: @status_del_admitido.to_param
    end

    assert_redirected_to status_del_admitidos_path
  end
end
