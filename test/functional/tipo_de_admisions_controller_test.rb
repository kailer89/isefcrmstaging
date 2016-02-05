require 'test_helper'

class TipoDeAdmisionsControllerTest < ActionController::TestCase
  setup do
    @tipo_de_admision = tipo_de_admisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_de_admisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_de_admision" do
    assert_difference('TipoDeAdmision.count') do
      post :create, tipo_de_admision: @tipo_de_admision.attributes
    end

    assert_redirected_to tipo_de_admision_path(assigns(:tipo_de_admision))
  end

  test "should show tipo_de_admision" do
    get :show, id: @tipo_de_admision.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_de_admision.to_param
    assert_response :success
  end

  test "should update tipo_de_admision" do
    put :update, id: @tipo_de_admision.to_param, tipo_de_admision: @tipo_de_admision.attributes
    assert_redirected_to tipo_de_admision_path(assigns(:tipo_de_admision))
  end

  test "should destroy tipo_de_admision" do
    assert_difference('TipoDeAdmision.count', -1) do
      delete :destroy, id: @tipo_de_admision.to_param
    end

    assert_redirected_to tipo_de_admisions_path
  end
end
