require_relative '../lib/building.rb'
require_relative '../lib/tenant.rb'
require_relative '../lib/apartment.rb'

require 'pry'



alex = Tenant.new("Alex", 22, 1000)

ap = Apartment.new(number: 1,rent: 100,sq_footage: 1000,num_of_bedrooms: 2,num_of_bathrooms: 2,tenants: [])
ap.add_tenant(alex)

binding.pry
