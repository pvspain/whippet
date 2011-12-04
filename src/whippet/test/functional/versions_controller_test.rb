require 'test_helper'

class VersionsControllerTest < ActionController::TestCase
  setup do
    @version = versions(:version1)
  end

  test "should create version" do
    assert_difference('Version.count') do
      post :create, version: @version.attributes, :book_id => @version.book_id, version: @version.attributes
    end

    assert_redirected_to @version.book, assigns(:version)
  end

  test "should destroy version" do
    assert_difference('Version.count', -1) do
      delete :destroy, id: @version.to_param, :book_id => @version.book_id
    end

    assert_redirected_to @version.book
  end
end
