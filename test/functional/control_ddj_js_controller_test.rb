require 'test_helper'

class ControlDdjJsControllerTest < ActionController::TestCase
  test "should get verDDJJsAgente" do
    get :verDDJJsAgente
    assert_response :success
  end

  test "should get verDDJJ" do
    get :verDDJJ
    assert_response :success
  end

  test "should get cargarDDJJ" do
    get :cargarDDJJ
    assert_response :success
  end

  test "should get modificarDDJJ" do
    get :modificarDDJJ
    assert_response :success
  end

  test "should get eliminarDDJJ" do
    get :eliminarDDJJ
    assert_response :success
  end

  test "should get verDDJJsEscuela" do
    get :verDDJJsEscuela
    assert_response :success
  end

  test "should get AprobarRechazarItemDDJJ" do
    get :AprobarRechazarItemDDJJ
    assert_response :success
  end

  test "should get verTodasLasDDJJs" do
    get :verTodasLasDDJJs
    assert_response :success
  end

  test "should get verDDJJsIncompatibles" do
    get :verDDJJsIncompatibles
    assert_response :success
  end

end
