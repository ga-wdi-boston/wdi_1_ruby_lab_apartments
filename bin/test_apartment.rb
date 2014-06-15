require_relative '../lib/apartment.rb'

apartment = Apartment.new(2, 3600, 2000, 4, 2)
tenant = Tenant.new('Jodi', 28, 550)

puts "My apartment is number #{apartment.number}, it costs #{apartment.rent} per month, is #{apartment.square_footage} square feet, has #{apartment.bedrooms} bedrooms and #{apartment.bathrooms} bathrooms."

puts "I am adding a new tenant named #{apartment.add_tenant('John Smith')} to my apartment."

