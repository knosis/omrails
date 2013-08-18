require 'test_helper'

class PrecapsControllerTest < ActionController::TestCase
  setup do
    @precap = precaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:precaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create precap" do
    assert_difference('Precap.count') do
      post :create, precap: { description: @precap.description }
    end

    assert_redirected_to precap_path(assigns(:precap))
  end

  test "should show precap" do
    get :show, id: @precap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @precap
    assert_response :success
  end

  test "should update precap" do
    put :update, id: @precap, precap: { description: @precap.description }
    assert_redirected_to precap_path(assigns(:precap))
  end

  test "should destroy precap" do
    assert_difference('Precap.count', -1) do
      delete :destroy, id: @precap
    end

    assert_redirected_to precaps_path
  end
end
