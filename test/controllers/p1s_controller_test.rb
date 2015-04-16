require 'test_helper'

class P1sControllerTest < ActionController::TestCase
  setup do
    @p1 = p1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p1" do
    assert_difference('P1.count') do
      post :create, p1: { title: @p1.title }
    end

    assert_redirected_to p1_path(assigns(:p1))
  end

  test "should show p1" do
    get :show, id: @p1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p1
    assert_response :success
  end

  test "should update p1" do
    patch :update, id: @p1, p1: { title: @p1.title }
    assert_redirected_to p1_path(assigns(:p1))
  end

  test "should destroy p1" do
    assert_difference('P1.count', -1) do
      delete :destroy, id: @p1
    end

    assert_redirected_to p1s_path
  end
end
