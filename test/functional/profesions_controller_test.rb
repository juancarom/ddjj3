require 'test_helper'

class ProfesionsControllerTest < ActionController::TestCase
  setup do
    @profesion = profesions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profesions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profesion" do
    assert_difference('Profesion.count') do
      post :create, :profesion => @profesion.attributes
    end

    assert_redirected_to profesion_path(assigns(:profesion))
  end

  test "should show profesion" do
    get :show, :id => @profesion.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @profesion.to_param
    assert_response :success
  end

  test "should update profesion" do
    put :update, :id => @profesion.to_param, :profesion => @profesion.attributes
    assert_redirected_to profesion_path(assigns(:profesion))
  end

  test "should destroy profesion" do
    assert_difference('Profesion.count', -1) do
      delete :destroy, :id => @profesion.to_param
    end

    assert_redirected_to profesions_path
  end
end
