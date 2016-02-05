require 'test_helper'

class ColegiaturasControllerTest < ActionController::TestCase
  setup do
    @colegiatura = colegiaturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:colegiaturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create colegiatura" do
    assert_difference('Colegiatura.count') do
      post :create, colegiatura: @colegiatura.attributes
    end

    assert_redirected_to colegiatura_path(assigns(:colegiatura))
  end

  test "should show colegiatura" do
    get :show, id: @colegiatura.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @colegiatura.to_param
    assert_response :success
  end

  test "should update colegiatura" do
    put :update, id: @colegiatura.to_param, colegiatura: @colegiatura.attributes
    assert_redirected_to colegiatura_path(assigns(:colegiatura))
  end

  test "should destroy colegiatura" do
    assert_difference('Colegiatura.count', -1) do
      delete :destroy, id: @colegiatura.to_param
    end

    assert_redirected_to colegiaturas_path
  end
end
