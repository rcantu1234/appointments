json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :first_name, :last_name, :age, :date_of_birth, :city, :state, :zip_code, :urgency, :appt_time, :note
  json.url appointment_url(appointment, format: :json)
end
