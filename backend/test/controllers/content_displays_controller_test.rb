require 'test_helper'

class ContentDisplaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content_display = content_displays(:one)
  end

  test "should get index" do
    get content_displays_url, as: :json
    assert_response :success
  end

  test "should create content_display" do
    assert_difference('ContentDisplay.count') do
      post content_displays_url, params: { content_display: { description: @content_display.description, level: @content_display.level, part_code: @content_display.part_code, star_item_id: @content_display.star_item_id, station_id: @content_display.station_id } }, as: :json
    end

    assert_response 201
  end

  test "should show content_display" do
    get content_display_url(@content_display), as: :json
    assert_response :success
  end

  test "should update content_display" do
    patch content_display_url(@content_display), params: { content_display: { description: @content_display.description, level: @content_display.level, part_code: @content_display.part_code, star_item_id: @content_display.star_item_id, station_id: @content_display.station_id } }, as: :json
    assert_response 200
  end

  test "should destroy content_display" do
    assert_difference('ContentDisplay.count', -1) do
      delete content_display_url(@content_display), as: :json
    end

    assert_response 204
  end
end
