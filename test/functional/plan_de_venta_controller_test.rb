require 'test_helper'

class PlanDeVentaControllerTest < ActionController::TestCase
  setup do
    @plan_de_ventum = plan_de_venta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plan_de_venta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan_de_ventum" do
    assert_difference('PlanDeVentum.count') do
      post :create, plan_de_ventum: @plan_de_ventum.attributes
    end

    assert_redirected_to plan_de_ventum_path(assigns(:plan_de_ventum))
  end

  test "should show plan_de_ventum" do
    get :show, id: @plan_de_ventum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan_de_ventum.to_param
    assert_response :success
  end

  test "should update plan_de_ventum" do
    put :update, id: @plan_de_ventum.to_param, plan_de_ventum: @plan_de_ventum.attributes
    assert_redirected_to plan_de_ventum_path(assigns(:plan_de_ventum))
  end

  test "should destroy plan_de_ventum" do
    assert_difference('PlanDeVentum.count', -1) do
      delete :destroy, id: @plan_de_ventum.to_param
    end

    assert_redirected_to plan_de_venta_path
  end
end
