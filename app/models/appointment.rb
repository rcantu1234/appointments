class Appointment < ActiveRecord::Base

    validates_presence_of :first_name, :last_name, :age,
    :date_of_birth, :city, :state, :zip_code, :urgency, :appt_time

    validates :date_of_birth

    validates :first_name, :uniqueness => { :message => " has been used."}

    validates :appt_time, :uniqueness => { :message => " has been taken." }

    validates :zip_code, length: { minimum: 5, maximum: 5 }, allow_blank:  false

end

