require 'test_helper'

class StatusDeEsesControllerTest < ActionController::TestCase
  setup do
    @status_de_ese = status_de_eses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_de_eses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_de_ese" do
    assert_difference('StatusDeEse.count') do
      post :create, status_de_ese: @status_de_ese.attributes
    end

    assert_redirected_to status_de_ese_path(assigns(:status_de_ese))
  end

  test "should show status_de_ese" do
    get :show, id: @status_de_ese.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_de_ese.to_param
    assert_response :success
  end

  test "should update status_de_ese" do
    put :update, id: @status_de_ese.to_param, status_de_ese: @status_de_ese.attributes
    assert_redirected_to status_de_ese_path(assigns(:status_de_ese))
  end

  test "should destroy status_de_ese" do
    assert_difference('StatusDeEse.count', -1) do
      delete :destroy, id: @status_de_ese.to_param
    end

    assert_redirected_to status_de_eses_path
  end
end
