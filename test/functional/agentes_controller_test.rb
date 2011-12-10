require 'test_helper'

class AgentesControllerTest < ActionController::TestCase
  setup do
    @agente = agentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agente" do
    assert_difference('Agente.count') do
      post :create, :agente => @agente.attributes
    end

    assert_redirected_to agente_path(assigns(:agente))
  end

  test "should show agente" do
    get :show, :id => @agente.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @agente.to_param
    assert_response :success
  end

  test "should update agente" do
    put :update, :id => @agente.to_param, :agente => @agente.attributes
    assert_redirected_to agente_path(assigns(:agente))
  end

  test "should destroy agente" do
    assert_difference('Agente.count', -1) do
      delete :destroy, :id => @agente.to_param
    end

    assert_redirected_to agentes_path
  end
end
