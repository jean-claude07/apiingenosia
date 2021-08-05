require 'test_helper'

class DirigeantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dirigeant = dirigeants(:one)
  end

  test "should get index" do
    get dirigeants_url, as: :json
    assert_response :success
  end

  test "should create dirigeant" do
    assert_difference('Dirigeant.count') do
      post dirigeants_url, params: { dirigeant: { email: @dirigeant.email, name: @dirigeant.name, sexe: @dirigeant.sexe } }, as: :json
    end

    assert_response 201
  end

  test "should show dirigeant" do
    get dirigeant_url(@dirigeant), as: :json
    assert_response :success
  end

  test "should update dirigeant" do
    patch dirigeant_url(@dirigeant), params: { dirigeant: { email: @dirigeant.email, name: @dirigeant.name, sexe: @dirigeant.sexe } }, as: :json
    assert_response 200
  end

  test "should destroy dirigeant" do
    assert_difference('Dirigeant.count', -1) do
      delete dirigeant_url(@dirigeant), as: :json
    end

    assert_response 204
  end
end
