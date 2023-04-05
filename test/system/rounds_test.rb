require "application_system_test_case"

class RoundsTest < ApplicationSystemTestCase
  setup do
    @round = rounds(:one)
  end

  test "visiting the index" do
    visit rounds_url
    assert_selector "h1", text: "Rounds"
  end

  test "creating a Round" do
    visit rounds_url
    click_on "New Round"

    fill_in "Course", with: @round.course
    fill_in "Date", with: @round.date
    fill_in "Hole1", with: @round.hole1
    fill_in "Hole2", with: @round.hole2
    fill_in "Hole3", with: @round.hole3
    fill_in "Hole4", with: @round.hole4
    fill_in "Hole5", with: @round.hole5
    fill_in "Hole6", with: @round.hole6
    fill_in "Hole7", with: @round.hole7
    fill_in "Hole8", with: @round.hole8
    fill_in "Hole9", with: @round.hole9
    fill_in "Weather", with: @round.weather
    click_on "Create Round"

    assert_text "Round was successfully created"
    click_on "Back"
  end

  test "updating a Round" do
    visit rounds_url
    click_on "Edit", match: :first

    fill_in "Course", with: @round.course
    fill_in "Date", with: @round.date
    fill_in "Hole1", with: @round.hole1
    fill_in "Hole2", with: @round.hole2
    fill_in "Hole3", with: @round.hole3
    fill_in "Hole4", with: @round.hole4
    fill_in "Hole5", with: @round.hole5
    fill_in "Hole6", with: @round.hole6
    fill_in "Hole7", with: @round.hole7
    fill_in "Hole8", with: @round.hole8
    fill_in "Hole9", with: @round.hole9
    fill_in "Weather", with: @round.weather
    click_on "Update Round"

    assert_text "Round was successfully updated"
    click_on "Back"
  end

  test "destroying a Round" do
    visit rounds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Round was successfully destroyed"
  end
end
