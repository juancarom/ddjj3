require 'test_helper'

class GrupoHorarioItemDdjjsControllerTest < ActionController::TestCase
  setup do
    @grupo_horario_item_ddjj = grupo_horario_item_ddjjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grupo_horario_item_ddjjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grupo_horario_item_ddjj" do
    assert_difference('GrupoHorarioItemDdjj.count') do
      post :create, :grupo_horario_item_ddjj => @grupo_horario_item_ddjj.attributes
    end

    assert_redirected_to grupo_horario_item_ddjj_path(assigns(:grupo_horario_item_ddjj))
  end

  test "should show grupo_horario_item_ddjj" do
    get :show, :id => @grupo_horario_item_ddjj.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @grupo_horario_item_ddjj.to_param
    assert_response :success
  end

  test "should update grupo_horario_item_ddjj" do
    put :update, :id => @grupo_horario_item_ddjj.to_param, :grupo_horario_item_ddjj => @grupo_horario_item_ddjj.attributes
    assert_redirected_to grupo_horario_item_ddjj_path(assigns(:grupo_horario_item_ddjj))
  end

  test "should destroy grupo_horario_item_ddjj" do
    assert_difference('GrupoHorarioItemDdjj.count', -1) do
      delete :destroy, :id => @grupo_horario_item_ddjj.to_param
    end

    assert_redirected_to grupo_horario_item_ddjjs_path
  end
end
