require 'test_helper'

class DripControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drip_index_url
    assert_response :success
  end

  test "should get create" do
    get drip_create_url
    assert_response :success
  end

  test "should get delete" do
    get drip_delete_url
    assert_response :success
  end

  test "should get show" do
    get drip_show_url
    assert_response :success
  end

end
