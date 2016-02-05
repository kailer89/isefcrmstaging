require 'test_helper'

class MetasGlobalesControllerTest < ActionController::TestCase
  setup do
    @metas_globale = metas_globales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:metas_globales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create metas_globale" do
    assert_difference('MetasGlobale.count') do
      post :create, metas_globale: @metas_globale.attributes
    end

    assert_redirected_to metas_globale_path(assigns(:metas_globale))
  end

  test "should show metas_globale" do
    get :show, id: @metas_globale.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @metas_globale.to_param
    assert_response :success
  end

  test "should update metas_globale" do
    put :update, id: @metas_globale.to_param, metas_globale: @metas_globale.attributes
    assert_redirected_to metas_globale_path(assigns(:metas_globale))
  end

  test "should destroy metas_globale" do
    assert_difference('MetasGlobale.count', -1) do
      delete :destroy, id: @metas_globale.to_param
    end

    assert_redirected_to metas_globales_path
  end
end
