require 'test_helper'

class DictamenPaasControllerTest < ActionController::TestCase
  setup do
    @dictamen_paa = dictamen_paas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dictamen_paas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dictamen_paa" do
    assert_difference('DictamenPaa.count') do
      post :create, dictamen_paa: @dictamen_paa.attributes
    end

    assert_redirected_to dictamen_paa_path(assigns(:dictamen_paa))
  end

  test "should show dictamen_paa" do
    get :show, id: @dictamen_paa.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dictamen_paa.to_param
    assert_response :success
  end

  test "should update dictamen_paa" do
    put :update, id: @dictamen_paa.to_param, dictamen_paa: @dictamen_paa.attributes
    assert_redirected_to dictamen_paa_path(assigns(:dictamen_paa))
  end

  test "should destroy dictamen_paa" do
    assert_difference('DictamenPaa.count', -1) do
      delete :destroy, id: @dictamen_paa.to_param
    end

    assert_redirected_to dictamen_paas_path
  end
end
