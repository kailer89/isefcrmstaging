require 'test_helper'

class BarraFavoritosControllerTest < ActionController::TestCase
  setup do
    @barra_favorito = barra_favoritos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barra_favoritos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barra_favorito" do
    assert_difference('BarraFavorito.count') do
      post :create, barra_favorito: @barra_favorito.attributes
    end

    assert_redirected_to barra_favorito_path(assigns(:barra_favorito))
  end

  test "should show barra_favorito" do
    get :show, id: @barra_favorito.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barra_favorito.to_param
    assert_response :success
  end

  test "should update barra_favorito" do
    put :update, id: @barra_favorito.to_param, barra_favorito: @barra_favorito.attributes
    assert_redirected_to barra_favorito_path(assigns(:barra_favorito))
  end

  test "should destroy barra_favorito" do
    assert_difference('BarraFavorito.count', -1) do
      delete :destroy, id: @barra_favorito.to_param
    end

    assert_redirected_to barra_favoritos_path
  end
end
