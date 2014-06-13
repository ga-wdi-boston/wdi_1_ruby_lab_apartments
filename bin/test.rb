require_relative '../lib/apartment.rb'
require_relative '../lib/building.rb'
require_relative '../lib/tenant.rb'

mike = Tenant.new(name: 'mike', age: '24', credit_score: 710)

puts mike.inspect
puts mike.credit_rating

donnybrook = Apartment.new(number: 5, rent: 1000, square_ft: 2000, beds: 1, baths: 1)

puts donnybrook.inspect

