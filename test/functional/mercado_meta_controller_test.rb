require 'test_helper'

class MercadoMetaControllerTest < ActionController::TestCase
  setup do
    @mercado_metum = mercado_meta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mercado_meta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mercado_metum" do
    assert_difference('MercadoMetum.count') do
      post :create, mercado_metum: @mercado_metum.attributes
    end

    assert_redirected_to mercado_metum_path(assigns(:mercado_metum))
  end

  test "should show mercado_metum" do
    get :show, id: @mercado_metum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mercado_metum.to_param
    assert_response :success
  end

  test "should update mercado_metum" do
    put :update, id: @mercado_metum.to_param, mercado_metum: @mercado_metum.attributes
    assert_redirected_to mercado_metum_path(assigns(:mercado_metum))
  end

  test "should destroy mercado_metum" do
    assert_difference('MercadoMetum.count', -1) do
      delete :destroy, id: @mercado_metum.to_param
    end

    assert_redirected_to mercado_meta_path
  end
end
