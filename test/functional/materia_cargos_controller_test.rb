require 'test_helper'

class MateriaCargosControllerTest < ActionController::TestCase
  setup do
    @materia_cargo = materia_cargos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materia_cargos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create materia_cargo" do
    assert_difference('MateriaCargo.count') do
      post :create, :materia_cargo => @materia_cargo.attributes
    end

    assert_redirected_to materia_cargo_path(assigns(:materia_cargo))
  end

  test "should show materia_cargo" do
    get :show, :id => @materia_cargo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @materia_cargo.to_param
    assert_response :success
  end

  test "should update materia_cargo" do
    put :update, :id => @materia_cargo.to_param, :materia_cargo => @materia_cargo.attributes
    assert_redirected_to materia_cargo_path(assigns(:materia_cargo))
  end

  test "should destroy materia_cargo" do
    assert_difference('MateriaCargo.count', -1) do
      delete :destroy, :id => @materia_cargo.to_param
    end

    assert_redirected_to materia_cargos_path
  end
end
