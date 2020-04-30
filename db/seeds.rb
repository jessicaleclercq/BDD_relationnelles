# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all
JoinTableDoctorSpecialty.destroy_all


100.times do
  city = City.create!(
    name: Faker::Address.city
  )

  doctor = Doctor.create!(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    city: City.all.sample,
    zip_code: Faker::Address.zip_code
    )

  patient = Patient.create!(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    city: City.all.sample
    )

  appointment = Appointment.create!(
    doctor: Doctor.all.sample, 
    patient: Patient.all.sample,
    city: City.all.sample,
    date: Faker::Date.forward(days: 30)
    )

end