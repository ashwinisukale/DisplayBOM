# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[{name: 'NDE assembly & Fitment', operation_sequence: '20'},
{name: 'Electrical', operation_sequence: '30'},
{name: 'ZPF Testing', operation_sequence: '40'},
{name: 'Final Assembly', operation_sequence: '50'},
{name: 'Before Painting inspection', operation_sequence: '60'}].each do |options|
	Station.create!(options)
end