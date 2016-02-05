require 'test_helper'

class MiPlanEstrategicoDePromocionPepsControllerTest < ActionController::TestCase
  setup do
    @mi_plan_estrategico_de_promocion_pep = mi_plan_estrategico_de_promocion_peps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mi_plan_estrategico_de_promocion_peps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mi_plan_estrategico_de_promocion_pep" do
    assert_difference('MiPlanEstrategicoDePromocionPep.count') do
      post :create, mi_plan_estrategico_de_promocion_pep: @mi_plan_estrategico_de_promocion_pep.attributes
    end

    assert_redirected_to mi_plan_estrategico_de_promocion_pep_path(assigns(:mi_plan_estrategico_de_promocion_pep))
  end

  test "should show mi_plan_estrategico_de_promocion_pep" do
    get :show, id: @mi_plan_estrategico_de_promocion_pep.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mi_plan_estrategico_de_promocion_pep.to_param
    assert_response :success
  end

  test "should update mi_plan_estrategico_de_promocion_pep" do
    put :update, id: @mi_plan_estrategico_de_promocion_pep.to_param, mi_plan_estrategico_de_promocion_pep: @mi_plan_estrategico_de_promocion_pep.attributes
    assert_redirected_to mi_plan_estrategico_de_promocion_pep_path(assigns(:mi_plan_estrategico_de_promocion_pep))
  end

  test "should destroy mi_plan_estrategico_de_promocion_pep" do
    assert_difference('MiPlanEstrategicoDePromocionPep.count', -1) do
      delete :destroy, id: @mi_plan_estrategico_de_promocion_pep.to_param
    end

    assert_redirected_to mi_plan_estrategico_de_promocion_peps_path
  end
end
