require 'test_helper'

class BatchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get batch_index_url
    assert_response :success
  end

  test "should get edit" do
    get batch_edit_url
    assert_response :success
  end

  test "should get delete" do
    get batch_delete_url
    assert_response :success
  end

  test "should get show" do
    get batch_show_url
    assert_response :success
  end

  test "should get create" do
    get batch_create_url
    assert_response :success
  end

end
