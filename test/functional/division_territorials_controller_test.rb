require 'test_helper'

class DivisionTerritorialsControllerTest < ActionController::TestCase
  setup do
    @division_territorial = division_territorials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:division_territorials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create division_territorial" do
    assert_difference('DivisionTerritorial.count') do
      post :create, division_territorial: @division_territorial.attributes
    end

    assert_redirected_to division_territorial_path(assigns(:division_territorial))
  end

  test "should show division_territorial" do
    get :show, id: @division_territorial.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @division_territorial.to_param
    assert_response :success
  end

  test "should update division_territorial" do
    put :update, id: @division_territorial.to_param, division_territorial: @division_territorial.attributes
    assert_redirected_to division_territorial_path(assigns(:division_territorial))
  end

  test "should destroy division_territorial" do
    assert_difference('DivisionTerritorial.count', -1) do
      delete :destroy, id: @division_territorial.to_param
    end

    assert_redirected_to division_territorials_path
  end
end
