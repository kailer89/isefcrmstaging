require 'test_helper'

class SolicitantesControllerTest < ActionController::TestCase
  setup do
    @solicitante = solicitantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicitantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitante" do
    assert_difference('Solicitante.count') do
      post :create, solicitante: @solicitante.attributes
    end

    assert_redirected_to solicitante_path(assigns(:solicitante))
  end

  test "should show solicitante" do
    get :show, id: @solicitante.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitante.to_param
    assert_response :success
  end

  test "should update solicitante" do
    put :update, id: @solicitante.to_param, solicitante: @solicitante.attributes
    assert_redirected_to solicitante_path(assigns(:solicitante))
  end

  test "should destroy solicitante" do
    assert_difference('Solicitante.count', -1) do
      delete :destroy, id: @solicitante.to_param
    end

    assert_redirected_to solicitantes_path
  end
end
