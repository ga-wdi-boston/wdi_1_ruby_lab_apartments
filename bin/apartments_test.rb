require 'pry'

require_relative '../lib/apartment.rb'
require_relative '../lib/building.rb'
require_relative '../lib/tenant.rb'

brook = Building.new(address: '59 Manchester Road, Brookline, MA, 02446')

purple_house = Apartment.new(number: 4, rent: 1800, square_footage: 1000, bedrooms: 2, bathrooms: 1)

brook.new_apartment(purple_house)

myself = Tenant.new(name: 'Max Kohl', age: 25, credit_score: 730)

bad = Tenant.new(name: 'Joe Shmoe', age: 22, credit_score: 500)

purple_house.new_tenant(myself)


binding.pry
