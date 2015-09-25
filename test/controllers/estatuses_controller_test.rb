require 'test_helper'

class EstatusesControllerTest < ActionController::TestCase
  setup do
    @estatus = estatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estatus" do
    assert_difference('Estatus.count') do
      post :create, estatus: { titulo: @estatus.titulo }
    end

    assert_redirected_to estatus_path(assigns(:estatus))
  end

  test "should show estatus" do
    get :show, id: @estatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estatus
    assert_response :success
  end

  test "should update estatus" do
    patch :update, id: @estatus, estatus: { titulo: @estatus.titulo }
    assert_redirected_to estatus_path(assigns(:estatus))
  end

  test "should destroy estatus" do
    assert_difference('Estatus.count', -1) do
      delete :destroy, id: @estatus
    end

    assert_redirected_to estatuses_path
  end
end
