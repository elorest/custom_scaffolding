require 'test_helper'

class P3sControllerTest < ActionController::TestCase
  setup do
    @p3 = p3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p3" do
    assert_difference('P3.count') do
      post :create, p3: { title: @p3.title }
    end

    assert_redirected_to p3_path(assigns(:p3))
  end

  test "should show p3" do
    get :show, id: @p3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p3
    assert_response :success
  end

  test "should update p3" do
    patch :update, id: @p3, p3: { title: @p3.title }
    assert_redirected_to p3_path(assigns(:p3))
  end

  test "should destroy p3" do
    assert_difference('P3.count', -1) do
      delete :destroy, id: @p3
    end

    assert_redirected_to p3s_path
  end
end
