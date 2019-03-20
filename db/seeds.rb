# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Job.destroy_all
JobApp.destroy_all

Hro.create(email: 'ayb@aybgourmet.com.co', name: 'AyB', last_name: 'Gourmet', phone: "3012536547", password: '123456' )
Hro.create(email: 'hogaru@hogaru.com.co', name: 'Hogar', last_name: 'U', phone: "3012536547", password: '123456' )
Hro.create(email: 'totality@totality.com.co', name: 'Totality', last_name: 'Services', phone: "3012536547", password: '123456' )

Cliente.create(email: 'info@lapradera.com.co', name: 'La Pradera', last_name: 'de Potosi', phone: "3012536547", password: '123456', HRO_id: Hro.find_by(name: 'Totality').id)
Cliente.create(email: 'info@losgalenos.com.co', name: 'Restaurante', last_name: 'los Galenos', phone: "3012536547", password: '123456', HRO_id: Hro.find_by(name: 'AyB').id )
Cliente.create(email: 'info@bacata.com.co', name: 'Bacatá', last_name: 'Coworking', phone: "3012536547", password: '123456', HRO_id: Hro.find_by(name: 'Hogar').id)
Cliente.create(email: 'info@kluane.com.co', name: 'Kluane', last_name: 'Drilling', phone: "3012536547", password: '123456', HRO_id: Hro.find_by(name: 'Hogar').id )
Cliente.create(email: 'info@gilat.com.co', name: 'Gilat', last_name: 'Networking', phone: "3012536547", password: '123456', HRO_id: Hro.find_by(name: 'Totality').id )




