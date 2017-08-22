require 'test_helper'

class ReportlinesControllerTest < ActionController::TestCase
  setup do
    @reportline = reportlines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reportlines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reportline" do
    assert_difference('Reportline.count') do
      post :create, reportline: @reportline.attributes
    end

    assert_redirected_to reportline_path(assigns(:reportline))
  end

  test "should show reportline" do
    get :show, id: @reportline.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reportline.to_param
    assert_response :success
  end

  test "should update reportline" do
    put :update, id: @reportline.to_param, reportline: @reportline.attributes
    assert_redirected_to reportline_path(assigns(:reportline))
  end

  test "should destroy reportline" do
    assert_difference('Reportline.count', -1) do
      delete :destroy, id: @reportline.to_param
    end

    assert_redirected_to reportlines_path
  end
end
