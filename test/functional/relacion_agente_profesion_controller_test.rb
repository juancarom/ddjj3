require 'test_helper'

class RelacionAgenteProfesionControllerTest < ActionController::TestCase
  test "should get agregarProfesionAgente" do
    get :agregarProfesionAgente
    assert_response :success
  end

  test "should get guardar" do
    get :guardar
    assert_response :success
  end

end
