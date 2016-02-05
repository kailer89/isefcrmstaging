require 'test_helper'

class StatusDeLaNotificacionsControllerTest < ActionController::TestCase
  setup do
    @status_de_la_notificacion = status_de_la_notificacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_de_la_notificacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_de_la_notificacion" do
    assert_difference('StatusDeLaNotificacion.count') do
      post :create, status_de_la_notificacion: @status_de_la_notificacion.attributes
    end

    assert_redirected_to status_de_la_notificacion_path(assigns(:status_de_la_notificacion))
  end

  test "should show status_de_la_notificacion" do
    get :show, id: @status_de_la_notificacion.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_de_la_notificacion.to_param
    assert_response :success
  end

  test "should update status_de_la_notificacion" do
    put :update, id: @status_de_la_notificacion.to_param, status_de_la_notificacion: @status_de_la_notificacion.attributes
    assert_redirected_to status_de_la_notificacion_path(assigns(:status_de_la_notificacion))
  end

  test "should destroy status_de_la_notificacion" do
    assert_difference('StatusDeLaNotificacion.count', -1) do
      delete :destroy, id: @status_de_la_notificacion.to_param
    end

    assert_redirected_to status_de_la_notificacions_path
  end
end
