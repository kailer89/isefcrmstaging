require 'test_helper'

class PreparatoriaOUniversidadDeOrigensControllerTest < ActionController::TestCase
  setup do
    @preparatoria_o_universidad_de_origen = preparatoria_o_universidad_de_origens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preparatoria_o_universidad_de_origens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preparatoria_o_universidad_de_origen" do
    assert_difference('PreparatoriaOUniversidadDeOrigen.count') do
      post :create, preparatoria_o_universidad_de_origen: @preparatoria_o_universidad_de_origen.attributes
    end

    assert_redirected_to preparatoria_o_universidad_de_origen_path(assigns(:preparatoria_o_universidad_de_origen))
  end

  test "should show preparatoria_o_universidad_de_origen" do
    get :show, id: @preparatoria_o_universidad_de_origen.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preparatoria_o_universidad_de_origen.to_param
    assert_response :success
  end

  test "should update preparatoria_o_universidad_de_origen" do
    put :update, id: @preparatoria_o_universidad_de_origen.to_param, preparatoria_o_universidad_de_origen: @preparatoria_o_universidad_de_origen.attributes
    assert_redirected_to preparatoria_o_universidad_de_origen_path(assigns(:preparatoria_o_universidad_de_origen))
  end

  test "should destroy preparatoria_o_universidad_de_origen" do
    assert_difference('PreparatoriaOUniversidadDeOrigen.count', -1) do
      delete :destroy, id: @preparatoria_o_universidad_de_origen.to_param
    end

    assert_redirected_to preparatoria_o_universidad_de_origens_path
  end
end
