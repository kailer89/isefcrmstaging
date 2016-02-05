require 'test_helper'

class FinalidadCultivosControllerTest < ActionController::TestCase
  setup do
    @finalidad_cultivo = finalidad_cultivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finalidad_cultivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finalidad_cultivo" do
    assert_difference('FinalidadCultivo.count') do
      post :create, finalidad_cultivo: @finalidad_cultivo.attributes
    end

    assert_redirected_to finalidad_cultivo_path(assigns(:finalidad_cultivo))
  end

  test "should show finalidad_cultivo" do
    get :show, id: @finalidad_cultivo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @finalidad_cultivo.to_param
    assert_response :success
  end

  test "should update finalidad_cultivo" do
    put :update, id: @finalidad_cultivo.to_param, finalidad_cultivo: @finalidad_cultivo.attributes
    assert_redirected_to finalidad_cultivo_path(assigns(:finalidad_cultivo))
  end

  test "should destroy finalidad_cultivo" do
    assert_difference('FinalidadCultivo.count', -1) do
      delete :destroy, id: @finalidad_cultivo.to_param
    end

    assert_redirected_to finalidad_cultivos_path
  end
end
