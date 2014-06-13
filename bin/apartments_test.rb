require 'pry'

require_relative '../lib/apartment.rb'
require_relative '../lib/building.rb'
require_relative '../lib/tenant.rb'

brook = Building.new(address: '59 Manchester Road, Brookline, MA, 02446')

purple_house = Apartment.new(number: 4, rent: 1800, square_footage: 1000, bedrooms: 2, bathrooms: 1)

brook.new_apartment(purple_house)


binding.pry
