require "application_system_test_case"

class EventDatesTest < ApplicationSystemTestCase
  setup do
    @event_date = event_dates(:one)
  end

  test "visiting the index" do
    visit event_dates_url
    assert_selector "h1", text: "Event dates"
  end

  test "should create event date" do
    visit event_dates_url
    click_on "New event date"

    fill_in "Date", with: @event_date.date
    fill_in "Location", with: @event_date.location
    click_on "Create Event date"

    assert_text "Event date was successfully created"
    click_on "Back"
  end

  test "should update Event date" do
    visit event_date_url(@event_date)
    click_on "Edit this event date", match: :first

    fill_in "Date", with: @event_date.date
    fill_in "Location", with: @event_date.location
    click_on "Update Event date"

    assert_text "Event date was successfully updated"
    click_on "Back"
  end

  test "should destroy Event date" do
    visit event_date_url(@event_date)
    click_on "Destroy this event date", match: :first

    assert_text "Event date was successfully destroyed"
  end
end
