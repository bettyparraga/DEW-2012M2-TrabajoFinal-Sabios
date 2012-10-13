require 'test_helper'

class SabiosControllerTest < ActionController::TestCase
  setup do
    @sabio = sabios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sabios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sabio" do
    assert_difference('Sabio.count') do
      post :create, sabio: @sabio.attributes
    end

    assert_redirected_to sabio_path(assigns(:sabio))
  end

  test "should show sabio" do
    get :show, id: @sabio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sabio.to_param
    assert_response :success
  end

  test "should update sabio" do
    put :update, id: @sabio.to_param, sabio: @sabio.attributes
    assert_redirected_to sabio_path(assigns(:sabio))
  end

  test "should destroy sabio" do
    assert_difference('Sabio.count', -1) do
      delete :destroy, id: @sabio.to_param
    end

    assert_redirected_to sabios_path
  end
end
