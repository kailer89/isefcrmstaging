require 'test_helper'

class ReportDirectionsControllerTest < ActionController::TestCase
  setup do
    @report_direction = report_directions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:report_directions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report_direction" do
    assert_difference('ReportDirection.count') do
      post :create, report_direction: @report_direction.attributes
    end

    assert_redirected_to report_direction_path(assigns(:report_direction))
  end

  test "should show report_direction" do
    get :show, id: @report_direction.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report_direction.to_param
    assert_response :success
  end

  test "should update report_direction" do
    put :update, id: @report_direction.to_param, report_direction: @report_direction.attributes
    assert_redirected_to report_direction_path(assigns(:report_direction))
  end

  test "should destroy report_direction" do
    assert_difference('ReportDirection.count', -1) do
      delete :destroy, id: @report_direction.to_param
    end

    assert_redirected_to report_directions_path
  end
end
