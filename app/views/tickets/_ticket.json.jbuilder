json.extract! ticket, :id, :request_number, :sequence_number, :request_type, :request_action, :response_due_date_time, :primary_sac, :additional_sac, :dig_site_info, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
