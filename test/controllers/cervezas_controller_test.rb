require 'test_helper'

class CervezasControllerTest < ActionController::TestCase
  setup do
    @cerveza = cervezas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cervezas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cerveza" do
    assert_difference('Cerveza.count') do
      post :create, cerveza: { ABV: @cerveza.ABV, brewer: @cerveza.brewer, brewery: @cerveza.brewery, name: @cerveza.name, price: @cerveza.price, type: @cerveza.type }
    end

    assert_redirected_to cerveza_path(assigns(:cerveza))
  end

  test "should show cerveza" do
    get :show, id: @cerveza
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cerveza
    assert_response :success
  end

  test "should update cerveza" do
    patch :update, id: @cerveza, cerveza: { ABV: @cerveza.ABV, brewer: @cerveza.brewer, brewery: @cerveza.brewery, name: @cerveza.name, price: @cerveza.price, type: @cerveza.type }
    assert_redirected_to cerveza_path(assigns(:cerveza))
  end

  test "should destroy cerveza" do
    assert_difference('Cerveza.count', -1) do
      delete :destroy, id: @cerveza
    end

    assert_redirected_to cervezas_path
  end
end
