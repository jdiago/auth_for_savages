require 'test_helper'

class SavagesControllerTest < ActionController::TestCase
  setup do
    @savage = savages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:savages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create savage" do
    assert_difference('Savage.count') do
      post :create, savage: { name: @savage.name }
    end

    assert_redirected_to savage_path(assigns(:savage))
  end

  test "should show savage" do
    get :show, id: @savage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @savage
    assert_response :success
  end

  test "should update savage" do
    patch :update, id: @savage, savage: { name: @savage.name }
    assert_redirected_to savage_path(assigns(:savage))
  end

  test "should destroy savage" do
    assert_difference('Savage.count', -1) do
      delete :destroy, id: @savage
    end

    assert_redirected_to savages_path
  end
end
