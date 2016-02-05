require 'test_helper'

class TerritoriosControllerTest < ActionController::TestCase
  setup do
    @territorio = territorios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:territorios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create territorio" do
    assert_difference('Territorio.count') do
      post :create, territorio: @territorio.attributes
    end

    assert_redirected_to territorio_path(assigns(:territorio))
  end

  test "should show territorio" do
    get :show, id: @territorio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @territorio.to_param
    assert_response :success
  end

  test "should update territorio" do
    put :update, id: @territorio.to_param, territorio: @territorio.attributes
    assert_redirected_to territorio_path(assigns(:territorio))
  end

  test "should destroy territorio" do
    assert_difference('Territorio.count', -1) do
      delete :destroy, id: @territorio.to_param
    end

    assert_redirected_to territorios_path
  end
end
