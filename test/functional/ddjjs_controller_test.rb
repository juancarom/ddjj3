require 'test_helper'

class DdjjsControllerTest < ActionController::TestCase
  setup do
    @ddjj = ddjjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ddjjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ddjj" do
    assert_difference('Ddjj.count') do
      post :create, :ddjj => @ddjj.attributes
    end

    assert_redirected_to ddjj_path(assigns(:ddjj))
  end

  test "should show ddjj" do
    get :show, :id => @ddjj.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ddjj.to_param
    assert_response :success
  end

  test "should update ddjj" do
    put :update, :id => @ddjj.to_param, :ddjj => @ddjj.attributes
    assert_redirected_to ddjj_path(assigns(:ddjj))
  end

  test "should destroy ddjj" do
    assert_difference('Ddjj.count', -1) do
      delete :destroy, :id => @ddjj.to_param
    end

    assert_redirected_to ddjjs_path
  end
end
