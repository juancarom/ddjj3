require 'test_helper'

class ProfesionAgentesControllerTest < ActionController::TestCase
  setup do
    @profesion_agente = profesion_agentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profesion_agentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profesion_agente" do
    assert_difference('ProfesionAgente.count') do
      post :create, :profesion_agente => @profesion_agente.attributes
    end

    assert_redirected_to profesion_agente_path(assigns(:profesion_agente))
  end

  test "should show profesion_agente" do
    get :show, :id => @profesion_agente.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @profesion_agente.to_param
    assert_response :success
  end

  test "should update profesion_agente" do
    put :update, :id => @profesion_agente.to_param, :profesion_agente => @profesion_agente.attributes
    assert_redirected_to profesion_agente_path(assigns(:profesion_agente))
  end

  test "should destroy profesion_agente" do
    assert_difference('ProfesionAgente.count', -1) do
      delete :destroy, :id => @profesion_agente.to_param
    end

    assert_redirected_to profesion_agentes_path
  end
end
