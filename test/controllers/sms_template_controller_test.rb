require 'test_helper'

class SmsTemplateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sms_template_index_url
    assert_response :success
  end

  test "should get create" do
    get sms_template_create_url
    assert_response :success
  end

  test "should get edit" do
    get sms_template_edit_url
    assert_response :success
  end

  test "should get show" do
    get sms_template_show_url
    assert_response :success
  end

  test "should get delete" do
    get sms_template_delete_url
    assert_response :success
  end

end
