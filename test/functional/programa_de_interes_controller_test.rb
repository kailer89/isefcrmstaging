require 'test_helper'

class ProgramaDeInteresControllerTest < ActionController::TestCase
  setup do
    @programa_de_intere = programa_de_interes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programa_de_interes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programa_de_intere" do
    assert_difference('ProgramaDeIntere.count') do
      post :create, programa_de_intere: @programa_de_intere.attributes
    end

    assert_redirected_to programa_de_intere_path(assigns(:programa_de_intere))
  end

  test "should show programa_de_intere" do
    get :show, id: @programa_de_intere.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programa_de_intere.to_param
    assert_response :success
  end

  test "should update programa_de_intere" do
    put :update, id: @programa_de_intere.to_param, programa_de_intere: @programa_de_intere.attributes
    assert_redirected_to programa_de_intere_path(assigns(:programa_de_intere))
  end

  test "should destroy programa_de_intere" do
    assert_difference('ProgramaDeIntere.count', -1) do
      delete :destroy, id: @programa_de_intere.to_param
    end

    assert_redirected_to programa_de_interes_path
  end
end
