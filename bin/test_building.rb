require_relative '../lib/building.rb'

my_building = Building.new('123 Main Street')
#my_building.address = "123 Main St"
#msg = my_building.apartments ? "has" : "does not have"

puts "My building is located at #{my_building.address} and has #{my_building.apartments} apartments."

puts "I just built an addition and now have #{my_building.add_apts(3)} apartments."
