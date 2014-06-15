require_relative '../lib/building.rb'

my_building = Building.new('123 Main Street')
#my_building = Building.new(address: '123 Main Street')

#my_building.address = "123 Main St"

puts "My building is located at #{my_building.address} and has #{my_building.apartments} apartments."

puts "I just added a #{my_building.add_apts("King Suite")} to my building."
