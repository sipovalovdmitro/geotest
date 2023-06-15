require "test_helper"

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_url
    assert_response :success
  end

  test "should create ticket" do
    assert_difference("Ticket.count") do
      post tickets_url, params: { ticket: { additional_sac: @ticket.additional_sac, dig_site_info: @ticket.dig_site_info, primary_sac: @ticket.primary_sac, request_action: @ticket.request_action, request_number: @ticket.request_number, request_type: @ticket.request_type, response_due_date_time: @ticket.response_due_date_time, sequence_number: @ticket.sequence_number } }
    end

    assert_redirected_to ticket_url(Ticket.last)
  end

  test "should show ticket" do
    get ticket_url(@ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_url(@ticket)
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { additional_sac: @ticket.additional_sac, dig_site_info: @ticket.dig_site_info, primary_sac: @ticket.primary_sac, request_action: @ticket.request_action, request_number: @ticket.request_number, request_type: @ticket.request_type, response_due_date_time: @ticket.response_due_date_time, sequence_number: @ticket.sequence_number } }
    assert_redirected_to ticket_url(@ticket)
  end

  test "should destroy ticket" do
    assert_difference("Ticket.count", -1) do
      delete ticket_url(@ticket)
    end

    assert_redirected_to tickets_url
  end
end
