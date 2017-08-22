require 'test_helper'

class CampanaSocialsControllerTest < ActionController::TestCase
  setup do
    @campana_social = campana_socials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campana_socials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campana_social" do
    assert_difference('CampanaSocial.count') do
      post :create, campana_social: @campana_social.attributes
    end

    assert_redirected_to campana_social_path(assigns(:campana_social))
  end

  test "should show campana_social" do
    get :show, id: @campana_social.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campana_social.to_param
    assert_response :success
  end

  test "should update campana_social" do
    put :update, id: @campana_social.to_param, campana_social: @campana_social.attributes
    assert_redirected_to campana_social_path(assigns(:campana_social))
  end

  test "should destroy campana_social" do
    assert_difference('CampanaSocial.count', -1) do
      delete :destroy, id: @campana_social.to_param
    end

    assert_redirected_to campana_socials_path
  end
end
