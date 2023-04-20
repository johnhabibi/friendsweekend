require "test_helper"

class EventDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_date = event_dates(:one)
  end

  test "should get index" do
    get event_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_event_date_url
    assert_response :success
  end

  test "should create event_date" do
    assert_difference("EventDate.count") do
      post event_dates_url, params: { event_date: { date: @event_date.date, location: @event_date.location } }
    end

    assert_redirected_to event_date_url(EventDate.last)
  end

  test "should show event_date" do
    get event_date_url(@event_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_date_url(@event_date)
    assert_response :success
  end

  test "should update event_date" do
    patch event_date_url(@event_date), params: { event_date: { date: @event_date.date, location: @event_date.location } }
    assert_redirected_to event_date_url(@event_date)
  end

  test "should destroy event_date" do
    assert_difference("EventDate.count", -1) do
      delete event_date_url(@event_date)
    end

    assert_redirected_to event_dates_url
  end
end
