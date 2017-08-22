require 'test_helper'

class EquipoPromocionsControllerTest < ActionController::TestCase
  setup do
    @equipo_promocion = equipo_promocions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipo_promocions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipo_promocion" do
    assert_difference('EquipoPromocion.count') do
      post :create, equipo_promocion: @equipo_promocion.attributes
    end

    assert_redirected_to equipo_promocion_path(assigns(:equipo_promocion))
  end

  test "should show equipo_promocion" do
    get :show, id: @equipo_promocion.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipo_promocion.to_param
    assert_response :success
  end

  test "should update equipo_promocion" do
    put :update, id: @equipo_promocion.to_param, equipo_promocion: @equipo_promocion.attributes
    assert_redirected_to equipo_promocion_path(assigns(:equipo_promocion))
  end

  test "should destroy equipo_promocion" do
    assert_difference('EquipoPromocion.count', -1) do
      delete :destroy, id: @equipo_promocion.to_param
    end

    assert_redirected_to equipo_promocions_path
  end
end
