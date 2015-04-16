require 'test_helper'

class R72sControllerTest < ActionController::TestCase
  setup do
    @r72 = r72s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:r72s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create r72" do
    assert_difference('R72.count') do
      post :create, r72: { title: @r72.title }
    end

    assert_redirected_to r72_path(assigns(:r72))
  end

  test "should show r72" do
    get :show, id: @r72
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @r72
    assert_response :success
  end

  test "should update r72" do
    patch :update, id: @r72, r72: { title: @r72.title }
    assert_redirected_to r72_path(assigns(:r72))
  end

  test "should destroy r72" do
    assert_difference('R72.count', -1) do
      delete :destroy, id: @r72
    end

    assert_redirected_to r72s_path
  end
end
