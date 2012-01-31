require 'test_helper'

class AdmDdjjControllerTest < ActionController::TestCase
  test "should get verDDJJ" do
    get :verDDJJ
    assert_response :success
  end

  test "should get verDDJJAgente" do
    get :verDDJJAgente
    assert_response :success
  end

  test "should get ModificarDDJJ" do
    get :ModificarDDJJ
    assert_response :success
  end

  test "should get CargarDDJJ" do
    get :CargarDDJJ
    assert_response :success
  end

  test "should get ListarDDJJs" do
    get :ListarDDJJs
    assert_response :success
  end

  test "should get ListarDDJJsIncompatibles" do
    get :ListarDDJJsIncompatibles
    assert_response :success
  end

  test "should get ListarDDJJsEscuela" do
    get :ListarDDJJsEscuela
    assert_response :success
  end

  test "should get ListarDDJJsAgente" do
    get :ListarDDJJsAgente
    assert_response :success
  end

  test "should get EliminarDdjj" do
    get :EliminarDdjj
    assert_response :success
  end

  test "should get AprobarItemDDJJ" do
    get :AprobarItemDDJJ
    assert_response :success
  end

  test "should get ObservarItemDDJJ" do
    get :ObservarItemDDJJ
    assert_response :success
  end

  test "should get RechazarItemDDJJ" do
    get :RechazarItemDDJJ
    assert_response :success
  end

  test "should get AgregarItemDDJJ" do
    get :AgregarItemDDJJ
    assert_response :success
  end

  test "should get EditarItemDDJJ" do
    get :EditarItemDDJJ
    assert_response :success
  end

  test "should get EliminarItemDDJJ" do
    get :EliminarItemDDJJ
    assert_response :success
  end

  test "should get EditarGrupoHorarioItemDDJJ" do
    get :EditarGrupoHorarioItemDDJJ
    assert_response :success
  end

  test "should get AgregarGrupoHorarioItemDDJJ" do
    get :AgregarGrupoHorarioItemDDJJ
    assert_response :success
  end

  test "should get EliminarGrupoHorarioItemDDJJ" do
    get :EliminarGrupoHorarioItemDDJJ
    assert_response :success
  end

end
