require 'test_helper'

class LeadGroupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lead_group_index_url
    assert_response :success
  end

  test "should get create" do
    get lead_group_create_url
    assert_response :success
  end

  test "should get edit" do
    get lead_group_edit_url
    assert_response :success
  end

  test "should get delete" do
    get lead_group_delete_url
    assert_response :success
  end

end
