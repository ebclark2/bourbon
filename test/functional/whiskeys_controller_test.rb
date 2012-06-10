require 'test_helper'

class WhiskeysControllerTest < ActionController::TestCase
  setup do
    @whiskey = whiskeys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whiskeys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whiskey" do
    assert_difference('Whiskey.count') do
      post :create, :whiskey => { :category => @whiskey.category, :description => @whiskey.description, :name => @whiskey.name }
    end

    assert_redirected_to whiskey_path(assigns(:whiskey))
  end

  test "should show whiskey" do
    get :show, :id => @whiskey
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @whiskey
    assert_response :success
  end

  test "should update whiskey" do
    put :update, :id => @whiskey, :whiskey => { :category => @whiskey.category, :description => @whiskey.description, :name => @whiskey.name }
    assert_redirected_to whiskey_path(assigns(:whiskey))
  end

  test "should destroy whiskey" do
    assert_difference('Whiskey.count', -1) do
      delete :destroy, :id => @whiskey
    end

    assert_redirected_to whiskeys_path
  end
end
