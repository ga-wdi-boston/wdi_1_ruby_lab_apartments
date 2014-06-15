require_relative "../lib/building.rb"
require_relative "../lib/apartment.rb"
require_relative "../lib/tenant.rb"
require "pry"

home = Apartment.new(number: 2, rent: 4000, square_footage: 1000, bedrooms: 4, bathrooms: 2)
downstairs = Apartment.new(number: 1, rent: 4500, square_footage: 1000, bedrooms: 3, bathrooms: 1)
building = Building.new("241 Washington St.")
building.add_apartment(home)
building.add_apartment(downstairs)

binding.pry
