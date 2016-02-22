require 'test_helper'

class MotoristaControllerTest < ActionController::TestCase
  setup do
    @motoristum = motorista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motorista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motoristum" do
    assert_difference('Motoristum.count') do
      post :create, motoristum: { ano: @motoristum.ano, cpf: @motoristum.cpf, marca: @motoristum.marca, name: @motoristum.name, tipo_de_caminhao: @motoristum.tipo_de_caminhao }
    end

    assert_redirected_to motoristum_path(assigns(:motoristum))
  end

  test "should show motoristum" do
    get :show, id: @motoristum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @motoristum
    assert_response :success
  end

  test "should update motoristum" do
    patch :update, id: @motoristum, motoristum: { ano: @motoristum.ano, cpf: @motoristum.cpf, marca: @motoristum.marca, name: @motoristum.name, tipo_de_caminhao: @motoristum.tipo_de_caminhao }
    assert_redirected_to motoristum_path(assigns(:motoristum))
  end

  test "should destroy motoristum" do
    assert_difference('Motoristum.count', -1) do
      delete :destroy, id: @motoristum
    end

    assert_redirected_to motorista_path
  end
end
