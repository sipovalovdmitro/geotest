require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "should create ticket" do
    visit tickets_url
    click_on "New ticket"

    fill_in "Additional sac", with: @ticket.additional_sac
    fill_in "Dig site info", with: @ticket.dig_site_info
    fill_in "Primary sac", with: @ticket.primary_sac
    fill_in "Request action", with: @ticket.request_action
    fill_in "Request number", with: @ticket.request_number
    fill_in "Request type", with: @ticket.request_type
    fill_in "Response due date time", with: @ticket.response_due_date_time
    fill_in "Sequence number", with: @ticket.sequence_number
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "should update Ticket" do
    visit ticket_url(@ticket)
    click_on "Edit this ticket", match: :first

    fill_in "Additional sac", with: @ticket.additional_sac
    fill_in "Dig site info", with: @ticket.dig_site_info
    fill_in "Primary sac", with: @ticket.primary_sac
    fill_in "Request action", with: @ticket.request_action
    fill_in "Request number", with: @ticket.request_number
    fill_in "Request type", with: @ticket.request_type
    fill_in "Response due date time", with: @ticket.response_due_date_time
    fill_in "Sequence number", with: @ticket.sequence_number
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "should destroy Ticket" do
    visit ticket_url(@ticket)
    click_on "Destroy this ticket", match: :first

    assert_text "Ticket was successfully destroyed"
  end
end
