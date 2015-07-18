require_relative '../lib/building.rb'
require_relative '../lib/tenant.rb'
require_relative '../lib/apartment.rb'

require 'pry'



alex = Tenant.new("Alex", 22, 1000)
peter = Tenant.new("Peter", 60, 580)
elaine = Tenant.new("Elaine", 38, 690)
ralph = Tenant.new("Ralph", 97, 10_100)

ap = Apartment.new(number: 1,rent: 100,sq_footage: 1000,num_of_bedrooms: 2,num_of_bathrooms: 2,tenants: [])
ap.add_tenant(alex)
ap.add_tenant(peter)

ap_2 = Apartment.new(number: 4,rent: 300,sq_footage: 3000,num_of_bedrooms: 8,num_of_bathrooms: 20,tenants: [elaine])
ap_2.add_tenant(ralph)


a_building = Building.new(address: "An address", apartments: [])
a_building.add_apartment(ap)

binding.pry
