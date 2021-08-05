require 'test_helper'

class UserphotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userphoto = userphotos(:one)
  end

  test "should get index" do
    get userphotos_url, as: :json
    assert_response :success
  end

  test "should create userphoto" do
    assert_difference('Userphoto.count') do
      post userphotos_url, params: { userphoto: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show userphoto" do
    get userphoto_url(@userphoto), as: :json
    assert_response :success
  end

  test "should update userphoto" do
    patch userphoto_url(@userphoto), params: { userphoto: {  } }, as: :json
    assert_response 200
  end

  test "should destroy userphoto" do
    assert_difference('Userphoto.count', -1) do
      delete userphoto_url(@userphoto), as: :json
    end

    assert_response 204
  end
end
