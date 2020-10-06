require 'test_helper'

class UserPermissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_permission = user_permissions(:one)
  end

  test "should get index" do
    get user_permissions_url, as: :json
    assert_response :success
  end

  test "should create user_permission" do
    assert_difference('UserPermission.count') do
      post user_permissions_url, params: { user_permission: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show user_permission" do
    get user_permission_url(@user_permission), as: :json
    assert_response :success
  end

  test "should update user_permission" do
    patch user_permission_url(@user_permission), params: { user_permission: {  } }, as: :json
    assert_response 200
  end

  test "should destroy user_permission" do
    assert_difference('UserPermission.count', -1) do
      delete user_permission_url(@user_permission), as: :json
    end

    assert_response 204
  end
end
