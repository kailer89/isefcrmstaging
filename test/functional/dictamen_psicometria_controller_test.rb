require 'test_helper'

class DictamenPsicometriaControllerTest < ActionController::TestCase
  setup do
    @dictamen_psicometrium = dictamen_psicometria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dictamen_psicometria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dictamen_psicometrium" do
    assert_difference('DictamenPsicometrium.count') do
      post :create, dictamen_psicometrium: @dictamen_psicometrium.attributes
    end

    assert_redirected_to dictamen_psicometrium_path(assigns(:dictamen_psicometrium))
  end

  test "should show dictamen_psicometrium" do
    get :show, id: @dictamen_psicometrium.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dictamen_psicometrium.to_param
    assert_response :success
  end

  test "should update dictamen_psicometrium" do
    put :update, id: @dictamen_psicometrium.to_param, dictamen_psicometrium: @dictamen_psicometrium.attributes
    assert_redirected_to dictamen_psicometrium_path(assigns(:dictamen_psicometrium))
  end

  test "should destroy dictamen_psicometrium" do
    assert_difference('DictamenPsicometrium.count', -1) do
      delete :destroy, id: @dictamen_psicometrium.to_param
    end

    assert_redirected_to dictamen_psicometria_path
  end
end
