require 'test_helper'

class AudioSummaryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get audio_summary_index_url
    assert_response :success
  end

  test "should get new" do
    get audio_summary_new_url
    assert_response :success
  end

  test "should get show" do
    get audio_summary_show_url
    assert_response :success
  end

  test "should get edit" do
    get audio_summary_edit_url
    assert_response :success
  end

  test "should get create" do
    get audio_summary_create_url
    assert_response :success
  end

end
