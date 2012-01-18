require 'test_helper'

class ItemDdjjsControllerTest < ActionController::TestCase
  setup do
    @item_ddjj = item_ddjjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_ddjjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_ddjj" do
    assert_difference('ItemDdjj.count') do
      post :create, :item_ddjj => @item_ddjj.attributes
    end

    assert_redirected_to item_ddjj_path(assigns(:item_ddjj))
  end

  test "should show item_ddjj" do
    get :show, :id => @item_ddjj.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @item_ddjj.to_param
    assert_response :success
  end

  test "should update item_ddjj" do
    put :update, :id => @item_ddjj.to_param, :item_ddjj => @item_ddjj.attributes
    assert_redirected_to item_ddjj_path(assigns(:item_ddjj))
  end

  test "should destroy item_ddjj" do
    assert_difference('ItemDdjj.count', -1) do
      delete :destroy, :id => @item_ddjj.to_param
    end

    assert_redirected_to item_ddjjs_path
  end
end
