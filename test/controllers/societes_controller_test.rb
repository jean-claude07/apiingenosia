require 'test_helper'

class SocietesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @societe = societes(:one)
  end

  test "should get index" do
    get societes_url, as: :json
    assert_response :success
  end

  test "should create societe" do
    assert_difference('Societe.count') do
      post societes_url, params: { societe: { codepostal: @societe.codepostal, description: @societe.description, nom: @societe.nom, type: @societe.type, ville: @societe.ville } }, as: :json
    end

    assert_response 201
  end

  test "should show societe" do
    get societe_url(@societe), as: :json
    assert_response :success
  end

  test "should update societe" do
    patch societe_url(@societe), params: { societe: { codepostal: @societe.codepostal, description: @societe.description, nom: @societe.nom, type: @societe.type, ville: @societe.ville } }, as: :json
    assert_response 200
  end

  test "should destroy societe" do
    assert_difference('Societe.count', -1) do
      delete societe_url(@societe), as: :json
    end

    assert_response 204
  end
end
