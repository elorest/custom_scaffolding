require 'test_helper'

class UrugsControllerTest < ActionController::TestCase
  setup do
    @urug = urugs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:urugs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create urug" do
    assert_difference('Urug.count') do
      post :create, urug: { title: @urug.title }
    end

    assert_redirected_to urug_path(assigns(:urug))
  end

  test "should show urug" do
    get :show, id: @urug
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @urug
    assert_response :success
  end

  test "should update urug" do
    patch :update, id: @urug, urug: { title: @urug.title }
    assert_redirected_to urug_path(assigns(:urug))
  end

  test "should destroy urug" do
    assert_difference('Urug.count', -1) do
      delete :destroy, id: @urug
    end

    assert_redirected_to urugs_path
  end
end
