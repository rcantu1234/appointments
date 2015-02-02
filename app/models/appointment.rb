class Appointment < ActiveRecord::Base
    validates_presence_of :first_name, :last_name, :age,
    :date_of_birth, :city, :state, :zip_code, :urgency, :appt_time

      validates :age, numericality: { greater_than: 20 }
end

