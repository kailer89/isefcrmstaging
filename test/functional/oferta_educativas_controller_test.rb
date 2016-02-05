require 'test_helper'

class OfertaEducativasControllerTest < ActionController::TestCase
  setup do
    @oferta_educativa = oferta_educativas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oferta_educativas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oferta_educativa" do
    assert_difference('OfertaEducativa.count') do
      post :create, oferta_educativa: @oferta_educativa.attributes
    end

    assert_redirected_to oferta_educativa_path(assigns(:oferta_educativa))
  end

  test "should show oferta_educativa" do
    get :show, id: @oferta_educativa.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oferta_educativa.to_param
    assert_response :success
  end

  test "should update oferta_educativa" do
    put :update, id: @oferta_educativa.to_param, oferta_educativa: @oferta_educativa.attributes
    assert_redirected_to oferta_educativa_path(assigns(:oferta_educativa))
  end

  test "should destroy oferta_educativa" do
    assert_difference('OfertaEducativa.count', -1) do
      delete :destroy, id: @oferta_educativa.to_param
    end

    assert_redirected_to oferta_educativas_path
  end
end
