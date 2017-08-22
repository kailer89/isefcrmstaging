require 'test_helper'

class StatusDeLaInscripcionsControllerTest < ActionController::TestCase
  setup do
    @status_de_la_inscripcion = status_de_la_inscripcions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_de_la_inscripcions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_de_la_inscripcion" do
    assert_difference('StatusDeLaInscripcion.count') do
      post :create, status_de_la_inscripcion: @status_de_la_inscripcion.attributes
    end

    assert_redirected_to status_de_la_inscripcion_path(assigns(:status_de_la_inscripcion))
  end

  test "should show status_de_la_inscripcion" do
    get :show, id: @status_de_la_inscripcion.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_de_la_inscripcion.to_param
    assert_response :success
  end

  test "should update status_de_la_inscripcion" do
    put :update, id: @status_de_la_inscripcion.to_param, status_de_la_inscripcion: @status_de_la_inscripcion.attributes
    assert_redirected_to status_de_la_inscripcion_path(assigns(:status_de_la_inscripcion))
  end

  test "should destroy status_de_la_inscripcion" do
    assert_difference('StatusDeLaInscripcion.count', -1) do
      delete :destroy, id: @status_de_la_inscripcion.to_param
    end

    assert_redirected_to status_de_la_inscripcions_path
  end
end
