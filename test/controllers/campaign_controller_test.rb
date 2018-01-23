require 'test_helper'

class CampaignControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get campaign_index_url
    assert_response :success
  end

  test "should get create" do
    get campaign_create_url
    assert_response :success
  end

  test "should get delete" do
    get campaign_delete_url
    assert_response :success
  end

  test "should get edit" do
    get campaign_edit_url
    assert_response :success
  end

  test "should get show" do
    get campaign_show_url
    assert_response :success
  end

end
