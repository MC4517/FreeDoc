class Specialty < ApplicationRecord
    has_many :doctors, through: :join_doctor_specialties 
end
