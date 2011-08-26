require 'test_helper'

class NoamisControllerTest < ActionController::TestCase
  setup do
    @noami = noamis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:noamis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create noami" do
    assert_difference('Noami.count') do
      post :create, :noami => @noami.attributes
    end

    assert_redirected_to noami_path(assigns(:noami))
  end

  test "should show noami" do
    get :show, :id => @noami.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @noami.to_param
    assert_response :success
  end

  test "should update noami" do
    put :update, :id => @noami.to_param, :noami => @noami.attributes
    assert_redirected_to noami_path(assigns(:noami))
  end

  test "should destroy noami" do
    assert_difference('Noami.count', -1) do
      delete :destroy, :id => @noami.to_param
    end

    assert_redirected_to noamis_path
  end
end
