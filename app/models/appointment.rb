class Appointment < ActiveRecord::Base

    validates_presence_of :first_name, :last_name, :age,
    :date_of_birth, :city, :state, :zip_code, :urgency, :appt_time

    validates :age, numericality: { greater_than: 21 }

    validates :first_name, :uniqueness: => true

    # validates_uniqueness_of scope: :appt_time, message: " there is already an appointment."

    # scope :age, where(:age => true)

end

