class ApiController < ApplicationController
  def index
  end

  def create_ticket_with_excavator
    @ticket = Ticket.new
    @ticket.request_number = params["RequestNumber"].presence
    @ticket.sequence_number = params["SequenceNumber"].presence.to_i
    @ticket.request_type = params["RequestType"].presence
    @ticket.request_action = params["RequestAction"].presence
    @ticket.response_due_date_time = params["DateTimes"]["ResponseDueDateTime"].presence
    @ticket.primary_sac = params["ServiceArea"]["PrimaryServiceAreaCode"]["SACode"].presence
    @ticket.additional_sac = params["ServiceArea"]["AdditionalServiceAreaCodes"]["SACode"].presence
    @ticket.dig_site_info = params["DigsiteInfo"]["WellKnownText"].presence

    
    @excavator = Excavator.new
    @excavator.company_name = params["Excavator"]["CompanyName"].presence
    
    @excavator.address = [params["Excavator"]["Address"].presence, params["Excavator"]["City"].presence, params["Excavator"]["State"].presence, params["Excavator"]["Zip"].presence].join(', ')
    @excavator.crew_on_site = params["Excavator"]["CompanyName"].presence
    @excavator.save

    @ticket.excavator = @excavator
    @ticket.save
  end


end
