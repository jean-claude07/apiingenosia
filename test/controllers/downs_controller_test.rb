require 'test_helper'

class DownsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @down = downs(:one)
  end

  test "should get index" do
    get downs_url, as: :json
    assert_response :success
  end

  test "should create down" do
    assert_difference('Down.count') do
      post downs_url, params: { down: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show down" do
    get down_url(@down), as: :json
    assert_response :success
  end

  test "should update down" do
    patch down_url(@down), params: { down: {  } }, as: :json
    assert_response 200
  end

  test "should destroy down" do
    assert_difference('Down.count', -1) do
      delete down_url(@down), as: :json
    end

    assert_response 204
  end
end
