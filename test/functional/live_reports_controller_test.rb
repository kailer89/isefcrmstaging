require 'test_helper'

class LiveReportsControllerTest < ActionController::TestCase
  setup do
    @live_report = live_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:live_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create live_report" do
    assert_difference('LiveReport.count') do
      post :create, live_report: @live_report.attributes
    end

    assert_redirected_to live_report_path(assigns(:live_report))
  end

  test "should show live_report" do
    get :show, id: @live_report.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @live_report.to_param
    assert_response :success
  end

  test "should update live_report" do
    put :update, id: @live_report.to_param, live_report: @live_report.attributes
    assert_redirected_to live_report_path(assigns(:live_report))
  end

  test "should destroy live_report" do
    assert_difference('LiveReport.count', -1) do
      delete :destroy, id: @live_report.to_param
    end

    assert_redirected_to live_reports_path
  end
end
