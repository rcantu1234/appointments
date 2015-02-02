class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.date :date_of_birth
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :urgency
      t.datetime :appt_time
      t.string :note

      t.timestamps null: false
    end
  end
end
