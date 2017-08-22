require 'test_helper'

class ReportparamsControllerTest < ActionController::TestCase
  setup do
    @reportparam = reportparams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reportparams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reportparam" do
    assert_difference('Reportparam.count') do
      post :create, reportparam: @reportparam.attributes
    end

    assert_redirected_to reportparam_path(assigns(:reportparam))
  end

  test "should show reportparam" do
    get :show, id: @reportparam.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reportparam.to_param
    assert_response :success
  end

  test "should update reportparam" do
    put :update, id: @reportparam.to_param, reportparam: @reportparam.attributes
    assert_redirected_to reportparam_path(assigns(:reportparam))
  end

  test "should destroy reportparam" do
    assert_difference('Reportparam.count', -1) do
      delete :destroy, id: @reportparam.to_param
    end

    assert_redirected_to reportparams_path
  end
end
