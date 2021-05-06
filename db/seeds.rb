require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

10.times do
    doctor = Doctor.create!(
        first_name: Fakker::Name.first_name
        last_name: Fakker::Name.last_name
        zip_code: Faker::Address.street_address
    )
end

10.times do
    patient = Patient.create!(
    first_name: Fakker::Name.first_name
    last_name: Fakker::Name.last_name
    )
end
