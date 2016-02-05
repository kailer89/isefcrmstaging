require 'test_helper'

class EmploymentshipsControllerTest < ActionController::TestCase
  setup do
    @employmentship = employmentships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employmentships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employmentship" do
    assert_difference('Employmentship.count') do
      post :create, employmentship: @employmentship.attributes
    end

    assert_redirected_to employmentship_path(assigns(:employmentship))
  end

  test "should show employmentship" do
    get :show, id: @employmentship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employmentship.to_param
    assert_response :success
  end

  test "should update employmentship" do
    put :update, id: @employmentship.to_param, employmentship: @employmentship.attributes
    assert_redirected_to employmentship_path(assigns(:employmentship))
  end

  test "should destroy employmentship" do
    assert_difference('Employmentship.count', -1) do
      delete :destroy, id: @employmentship.to_param
    end

    assert_redirected_to employmentships_path
  end
end
