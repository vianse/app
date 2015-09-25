require 'test_helper'

class AgrupadoresControllerTest < ActionController::TestCase
  setup do
    @agrupadore = agrupadores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agrupadores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agrupadore" do
    assert_difference('Agrupadore.count') do
      post :create, agrupadore: { titulo: @agrupadore.titulo }
    end

    assert_redirected_to agrupadore_path(assigns(:agrupadore))
  end

  test "should show agrupadore" do
    get :show, id: @agrupadore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agrupadore
    assert_response :success
  end

  test "should update agrupadore" do
    patch :update, id: @agrupadore, agrupadore: { titulo: @agrupadore.titulo }
    assert_redirected_to agrupadore_path(assigns(:agrupadore))
  end

  test "should destroy agrupadore" do
    assert_difference('Agrupadore.count', -1) do
      delete :destroy, id: @agrupadore
    end

    assert_redirected_to agrupadores_path
  end
end
