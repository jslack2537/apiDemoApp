# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
file = File.read('db/people.json')
data_hash = JSON.parse(file, symbolize_names: true)
records = JSON.parse(File.read('db/people.json'))

records.each do |record| 
    User.create!(record.except('logins').merge('password' => 'encrypted password'))
end

records.each do |record|
     Login.create!(record['logins'])
end