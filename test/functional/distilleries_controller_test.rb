require 'test_helper'

class DistilleriesControllerTest < ActionController::TestCase
  setup do
    @distillery = distilleries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distilleries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distillery" do
    assert_difference('Distillery.count') do
      post :create, :distillery => { :name => @distillery.name }
    end

    assert_redirected_to distillery_path(assigns(:distillery))
  end

  test "should show distillery" do
    get :show, :id => @distillery
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @distillery
    assert_response :success
  end

  test "should update distillery" do
    put :update, :id => @distillery, :distillery => { :name => @distillery.name }
    assert_redirected_to distillery_path(assigns(:distillery))
  end

  test "should destroy distillery" do
    assert_difference('Distillery.count', -1) do
      delete :destroy, :id => @distillery
    end

    assert_redirected_to distilleries_path
  end
end
