require 'test_helper'

class EmprendedorsControllerTest < ActionController::TestCase
  setup do
    @emprendedor = emprendedors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emprendedors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emprendedor" do
    assert_difference('Emprendedor.count') do
      post :create, emprendedor: @emprendedor.attributes
    end

    assert_redirected_to emprendedor_path(assigns(:emprendedor))
  end

  test "should show emprendedor" do
    get :show, id: @emprendedor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emprendedor.to_param
    assert_response :success
  end

  test "should update emprendedor" do
    put :update, id: @emprendedor.to_param, emprendedor: @emprendedor.attributes
    assert_redirected_to emprendedor_path(assigns(:emprendedor))
  end

  test "should destroy emprendedor" do
    assert_difference('Emprendedor.count', -1) do
      delete :destroy, id: @emprendedor.to_param
    end

    assert_redirected_to emprendedors_path
  end
end
