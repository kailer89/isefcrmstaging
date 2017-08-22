require 'test_helper'

class StatusDeLaAccion1sControllerTest < ActionController::TestCase
  setup do
    @status_de_la_accion_1 = status_de_la_accion_1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_de_la_accion_1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_de_la_accion_1" do
    assert_difference('StatusDeLaAccion1.count') do
      post :create, status_de_la_accion_1: @status_de_la_accion_1.attributes
    end

    assert_redirected_to status_de_la_accion_1_path(assigns(:status_de_la_accion_1))
  end

  test "should show status_de_la_accion_1" do
    get :show, id: @status_de_la_accion_1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_de_la_accion_1.to_param
    assert_response :success
  end

  test "should update status_de_la_accion_1" do
    put :update, id: @status_de_la_accion_1.to_param, status_de_la_accion_1: @status_de_la_accion_1.attributes
    assert_redirected_to status_de_la_accion_1_path(assigns(:status_de_la_accion_1))
  end

  test "should destroy status_de_la_accion_1" do
    assert_difference('StatusDeLaAccion1.count', -1) do
      delete :destroy, id: @status_de_la_accion_1.to_param
    end

    assert_redirected_to status_de_la_accion_1s_path
  end
end
