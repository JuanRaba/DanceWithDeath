json.extract! appointment, :id, :date, :starttime, :contact, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
