require 'test_helper'

class StatusDelPagoDeLaInscripcionsControllerTest < ActionController::TestCase
  setup do
    @status_del_pago_de_la_inscripcion = status_del_pago_de_la_inscripcions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_del_pago_de_la_inscripcions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_del_pago_de_la_inscripcion" do
    assert_difference('StatusDelPagoDeLaInscripcion.count') do
      post :create, status_del_pago_de_la_inscripcion: @status_del_pago_de_la_inscripcion.attributes
    end

    assert_redirected_to status_del_pago_de_la_inscripcion_path(assigns(:status_del_pago_de_la_inscripcion))
  end

  test "should show status_del_pago_de_la_inscripcion" do
    get :show, id: @status_del_pago_de_la_inscripcion.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_del_pago_de_la_inscripcion.to_param
    assert_response :success
  end

  test "should update status_del_pago_de_la_inscripcion" do
    put :update, id: @status_del_pago_de_la_inscripcion.to_param, status_del_pago_de_la_inscripcion: @status_del_pago_de_la_inscripcion.attributes
    assert_redirected_to status_del_pago_de_la_inscripcion_path(assigns(:status_del_pago_de_la_inscripcion))
  end

  test "should destroy status_del_pago_de_la_inscripcion" do
    assert_difference('StatusDelPagoDeLaInscripcion.count', -1) do
      delete :destroy, id: @status_del_pago_de_la_inscripcion.to_param
    end

    assert_redirected_to status_del_pago_de_la_inscripcions_path
  end
end
