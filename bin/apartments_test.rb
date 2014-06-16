require 'pry'

require_relative '../lib/apartment.rb'
require_relative '../lib/building.rb'
require_relative '../lib/tenant.rb'

brook = Building.new(address: '59 Manchester Road, Brookline, MA, 02446')

eds_house = Building.new(address: '105 Dudley St, Cambridge, MA, 02140')

purple_house = Apartment.new(number: 4, rent: 1800, square_footage: 1000, bedrooms: 2, bathrooms: 1)

dudley = Apartment.new(number: nil, rent: 1800, square_footage: 1260, bedrooms: 2, bathrooms: 1)

brook.new_apartment(purple_house)

eds_house.new_apartment(dudley)

myself = Tenant.new(name: 'Max Kohl', age: 25, credit_score: 730)

bad = Tenant.new(name: 'Joe Shmoe', age: 22, credit_score: 500)

mediocre = Tenant.new(name: 'Billy Bob', age: 30, credit_score: 623)

good = Tenant.new(name: 'This Guy', age: 37, credit_score: 688)

excellent = Tenant.new(name: 'So Great', age: 45, credit_score: 790)

purple_house.new_tenant(myself)
purple_house.new_tenant(excellent)

# purple_house.remove_a_tenant(name: 'Max Kohl')

binding.pry
