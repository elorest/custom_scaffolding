require 'test_helper'

class R7sControllerTest < ActionController::TestCase
  setup do
    @r7 = r7s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:r7s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create r7" do
    assert_difference('R7.count') do
      post :create, r7: { title: @r7.title }
    end

    assert_redirected_to r7_path(assigns(:r7))
  end

  test "should show r7" do
    get :show, id: @r7
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @r7
    assert_response :success
  end

  test "should update r7" do
    patch :update, id: @r7, r7: { title: @r7.title }
    assert_redirected_to r7_path(assigns(:r7))
  end

  test "should destroy r7" do
    assert_difference('R7.count', -1) do
      delete :destroy, id: @r7
    end

    assert_redirected_to r7s_path
  end
end
