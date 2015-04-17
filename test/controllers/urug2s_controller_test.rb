require 'test_helper'

class Urug2sControllerTest < ActionController::TestCase
  setup do
    @urug2 = urug2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:urug2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create urug2" do
    assert_difference('Urug2.count') do
      post :create, urug2: { title: @urug2.title }
    end

    assert_redirected_to urug2_path(assigns(:urug2))
  end

  test "should show urug2" do
    get :show, id: @urug2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @urug2
    assert_response :success
  end

  test "should update urug2" do
    patch :update, id: @urug2, urug2: { title: @urug2.title }
    assert_redirected_to urug2_path(assigns(:urug2))
  end

  test "should destroy urug2" do
    assert_difference('Urug2.count', -1) do
      delete :destroy, id: @urug2
    end

    assert_redirected_to urug2s_path
  end
end
