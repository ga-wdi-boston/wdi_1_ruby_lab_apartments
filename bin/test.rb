require_relative '../lib/building.rb'
require_relative '../lib/tenant.rb'
require_relative '../lib/apartment.rb'

require 'pry'

binding.pry

ap = Apartment.new(number: 1,rent: 100,sq_footage: 1000,bedrooms: 2,bathrooms: 2,tenants: ["Alex"])

