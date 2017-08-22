require 'test_helper'

class AdmitidosControllerTest < ActionController::TestCase
  setup do
    @admitido = admitidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admitidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admitido" do
    assert_difference('Admitido.count') do
      post :create, admitido: @admitido.attributes
    end

    assert_redirected_to admitido_path(assigns(:admitido))
  end

  test "should show admitido" do
    get :show, id: @admitido.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admitido.to_param
    assert_response :success
  end

  test "should update admitido" do
    put :update, id: @admitido.to_param, admitido: @admitido.attributes
    assert_redirected_to admitido_path(assigns(:admitido))
  end

  test "should destroy admitido" do
    assert_difference('Admitido.count', -1) do
      delete :destroy, id: @admitido.to_param
    end

    assert_redirected_to admitidos_path
  end
end
