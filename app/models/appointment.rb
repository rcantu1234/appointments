class Appointment < ActiveRecord::Base

    validates_presence_of :first_name, :last_name, :age,
    :date_of_birth, :city, :state, :zip_code, :urgency, :appt_time

    validates_inclusion_of :date_of_birth, :in => Date.new(1994)..Time.now.years_ago(21).to_date,
    :message => 'You must be 21 years or older'

    #validates :first_name, :uniqueness => { :message => " has been used."}

    validates :appt_time, :uniqueness => { :message => " has been taken." }

    validates :zip_code, presence: true
    validates_length_of :zip_code, minimum: 5, maximum: 5

end

