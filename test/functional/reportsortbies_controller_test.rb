require 'test_helper'

class ReportsortbiesControllerTest < ActionController::TestCase
  setup do
    @reportsortby = reportsortbies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reportsortbies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reportsortby" do
    assert_difference('Reportsortby.count') do
      post :create, reportsortby: @reportsortby.attributes
    end

    assert_redirected_to reportsortby_path(assigns(:reportsortby))
  end

  test "should show reportsortby" do
    get :show, id: @reportsortby.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reportsortby.to_param
    assert_response :success
  end

  test "should update reportsortby" do
    put :update, id: @reportsortby.to_param, reportsortby: @reportsortby.attributes
    assert_redirected_to reportsortby_path(assigns(:reportsortby))
  end

  test "should destroy reportsortby" do
    assert_difference('Reportsortby.count', -1) do
      delete :destroy, id: @reportsortby.to_param
    end

    assert_redirected_to reportsortbies_path
  end
end
