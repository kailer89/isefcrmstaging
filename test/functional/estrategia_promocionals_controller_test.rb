require 'test_helper'

class EstrategiaPromocionalsControllerTest < ActionController::TestCase
  setup do
    @estrategia_promocional = estrategia_promocionals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estrategia_promocionals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estrategia_promocional" do
    assert_difference('EstrategiaPromocional.count') do
      post :create, estrategia_promocional: @estrategia_promocional.attributes
    end

    assert_redirected_to estrategia_promocional_path(assigns(:estrategia_promocional))
  end

  test "should show estrategia_promocional" do
    get :show, id: @estrategia_promocional.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estrategia_promocional.to_param
    assert_response :success
  end

  test "should update estrategia_promocional" do
    put :update, id: @estrategia_promocional.to_param, estrategia_promocional: @estrategia_promocional.attributes
    assert_redirected_to estrategia_promocional_path(assigns(:estrategia_promocional))
  end

  test "should destroy estrategia_promocional" do
    assert_difference('EstrategiaPromocional.count', -1) do
      delete :destroy, id: @estrategia_promocional.to_param
    end

    assert_redirected_to estrategia_promocionals_path
  end
end
