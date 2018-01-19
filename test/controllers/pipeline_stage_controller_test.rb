require 'test_helper'

class PipelineStageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pipeline_stage_index_url
    assert_response :success
  end

  test "should get create" do
    get pipeline_stage_create_url
    assert_response :success
  end

  test "should get delete" do
    get pipeline_stage_delete_url
    assert_response :success
  end

  test "should get edit" do
    get pipeline_stage_edit_url
    assert_response :success
  end

end
