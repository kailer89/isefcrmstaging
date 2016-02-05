require 'test_helper'

class MetaControllerTest < ActionController::TestCase
  setup do
    @metum = meta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create metum" do
    assert_difference('Meta.count') do
      post :create, metum: @metum.attributes
    end

    assert_redirected_to metum_path(assigns(:metum))
  end

  test "should show metum" do
    get :show, id: @metum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @metum.to_param
    assert_response :success
  end

  test "should update metum" do
    put :update, id: @metum.to_param, metum: @metum.attributes
    assert_redirected_to metum_path(assigns(:metum))
  end

  test "should destroy metum" do
    assert_difference('Meta.count', -1) do
      delete :destroy, id: @metum.to_param
    end

    assert_redirected_to meta_index_path
  end
end
