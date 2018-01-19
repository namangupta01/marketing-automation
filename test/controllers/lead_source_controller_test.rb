require 'test_helper'

class LeadSourceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lead_source_index_url
    assert_response :success
  end

  test "should get create" do
    get lead_source_create_url
    assert_response :success
  end

  test "should get edit" do
    get lead_source_edit_url
    assert_response :success
  end

  test "should get delete" do
    get lead_source_delete_url
    assert_response :success
  end

end
