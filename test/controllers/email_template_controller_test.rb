require 'test_helper'

class EmailTemplateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get email_template_index_url
    assert_response :success
  end

  test "should get show" do
    get email_template_show_url
    assert_response :success
  end

  test "should get edit" do
    get email_template_edit_url
    assert_response :success
  end

  test "should get delete" do
    get email_template_delete_url
    assert_response :success
  end

  test "should get create" do
    get email_template_create_url
    assert_response :success
  end

end
