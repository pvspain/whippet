require 'test_helper'

class VersionsControllerTest < ActionController::TestCase
  setup do
    @version = versions(:version1)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create version" do
    assert_difference('Version.count') do
      post :create, :book_id => @version.book_id, version: @version.attributes
    end

    assert_redirected_to version_path(assigns(:version))
  end

  test "should show version" do
    get :show, id: @version.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @version.to_param
    assert_response :success
  end

  test "should update version" do
    put :update, id: @version.to_param, version: @version.attributes
    assert_redirected_to version_path(assigns(:version))
  end

  test "should destroy version" do
    assert_difference('Version.count', -1) do
      delete :destroy, id: @version.to_param
    end

    assert_redirected_to versions_path
  end
end
