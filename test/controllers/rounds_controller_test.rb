require "test_helper"

class RoundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @round = rounds(:one)
  end

  test "should get index" do
    get rounds_url
    assert_response :success
  end

  test "should get new" do
    get new_round_url
    assert_response :success
  end

  test "should create round" do
    assert_difference('Round.count') do
      post rounds_url, params: { round: { course: @round.course, date: @round.date, hole1: @round.hole1, hole2: @round.hole2, hole3: @round.hole3, hole4: @round.hole4, hole5: @round.hole5, hole6: @round.hole6, hole7: @round.hole7, hole8: @round.hole8, hole9: @round.hole9, weather: @round.weather } }
    end

    assert_redirected_to round_url(Round.last)
  end

  test "should show round" do
    get round_url(@round)
    assert_response :success
  end

  test "should get edit" do
    get edit_round_url(@round)
    assert_response :success
  end

  test "should update round" do
    patch round_url(@round), params: { round: { course: @round.course, date: @round.date, hole1: @round.hole1, hole2: @round.hole2, hole3: @round.hole3, hole4: @round.hole4, hole5: @round.hole5, hole6: @round.hole6, hole7: @round.hole7, hole8: @round.hole8, hole9: @round.hole9, weather: @round.weather } }
    assert_redirected_to round_url(@round)
  end

  test "should destroy round" do
    assert_difference('Round.count', -1) do
      delete round_url(@round)
    end

    assert_redirected_to rounds_url
  end
end
