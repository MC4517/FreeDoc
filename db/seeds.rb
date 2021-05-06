require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all
City.destroy_all


5.times do
    city = City.create!(
        name: Faker::Address.city,
        zip_code: Faker::Address.zip
    )
end
10.times do
    doctor = Doctor.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name)
    end


20.times do
    patient = Patient.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
        
    )
end


30.times do
    appointment = Appointment.create!(
        doctor_id: Faker::Number.within(range: 1..10),
        patient_id: Faker::Number.within(range: 1..50),
        date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), 
        city_id: Faker::Number.within(range: 1..5),       
)
end

i = 1

20.times do
    
    doctor_join_speciality = JoinDoctorSpecialty.create!(
        doctor_id: i, specialty_id: Faker::Number.within(range: 1..5))
        i += 1
         
end

