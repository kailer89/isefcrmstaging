require 'test_helper'

class NacionalDeAperturasControllerTest < ActionController::TestCase
  setup do
    @nacional_de_apertura = nacional_de_aperturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nacional_de_aperturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nacional_de_apertura" do
    assert_difference('NacionalDeApertura.count') do
      post :create, nacional_de_apertura: @nacional_de_apertura.attributes
    end

    assert_redirected_to nacional_de_apertura_path(assigns(:nacional_de_apertura))
  end

  test "should show nacional_de_apertura" do
    get :show, id: @nacional_de_apertura.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nacional_de_apertura.to_param
    assert_response :success
  end

  test "should update nacional_de_apertura" do
    put :update, id: @nacional_de_apertura.to_param, nacional_de_apertura: @nacional_de_apertura.attributes
    assert_redirected_to nacional_de_apertura_path(assigns(:nacional_de_apertura))
  end

  test "should destroy nacional_de_apertura" do
    assert_difference('NacionalDeApertura.count', -1) do
      delete :destroy, id: @nacional_de_apertura.to_param
    end

    assert_redirected_to nacional_de_aperturas_path
  end
end
