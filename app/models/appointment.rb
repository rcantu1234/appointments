class Appointment < ActiveRecord::Base

    validates_presence_of :first_name, :last_name, :age,
    :date_of_birth, :city, :state, :zip_code, :urgency, :appt_time

    validates_inclusion_of :date_of_birth, :in => Date.new(1900)..Time.now.years_ago(21).to_date,
    :message => 'You must be 21 years or older'

    validates :age, inclusion: { in: 21..100, :message => 'You must be 21 years or older' }

    validates :appt_time, :uniqueness => { :message => " has been taken." }

    validates :zip_code, :numericality => true
    validates_length_of :zip_code, minimum: 5, maximum: 5

    default_scope { where state: 'Texas'}

end

