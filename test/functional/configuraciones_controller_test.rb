require 'test_helper'

class ConfiguracionesControllerTest < ActionController::TestCase
  setup do
    @configuracione = configuraciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configuraciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configuracione" do
    assert_difference('Configuracione.count') do
      post :create, configuracione: @configuracione.attributes
    end

    assert_redirected_to configuracione_path(assigns(:configuracione))
  end

  test "should show configuracione" do
    get :show, id: @configuracione.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @configuracione.to_param
    assert_response :success
  end

  test "should update configuracione" do
    put :update, id: @configuracione.to_param, configuracione: @configuracione.attributes
    assert_redirected_to configuracione_path(assigns(:configuracione))
  end

  test "should destroy configuracione" do
    assert_difference('Configuracione.count', -1) do
      delete :destroy, id: @configuracione.to_param
    end

    assert_redirected_to configuraciones_path
  end
end
