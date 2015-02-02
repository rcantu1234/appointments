class Appointment < ActiveRecord::Base
    validates_presence_of :first_name, :last_name, :age,
    :date_of_birth, :city, :state, :zip_code, :urgency, :appt_time

    validates :age, numericality: { greater_than: 20 }
    #validates :age, -> { where(arel_table[:age] >= 21)}

f.select :urgency, options_for_select(%w[High Low None])
and then you use the same (%w[High Low None])

  #scope :long_name, -> { where("char_length('contacts.last_name') < 10") }

end

