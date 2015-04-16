require 'test_helper'

class P2sControllerTest < ActionController::TestCase
  setup do
    @p2 = p2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p2" do
    assert_difference('P2.count') do
      post :create, p2: { title: @p2.title }
    end

    assert_redirected_to p2_path(assigns(:p2))
  end

  test "should show p2" do
    get :show, id: @p2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p2
    assert_response :success
  end

  test "should update p2" do
    patch :update, id: @p2, p2: { title: @p2.title }
    assert_redirected_to p2_path(assigns(:p2))
  end

  test "should destroy p2" do
    assert_difference('P2.count', -1) do
      delete :destroy, id: @p2
    end

    assert_redirected_to p2s_path
  end
end
