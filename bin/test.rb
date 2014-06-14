require_relative '../lib/building.rb'
require_relative '../lib/apartment.rb'
require 'pry'

#Tenant
tenant1 = Tenant.new('Tom',24,720)
puts tenant1.credit_check

#test apartment class
Apartment1 = Apartment.new(417,900,30,3,1)

#test Apartment's class's add tenant
Apartment1.add_tenant('Tom',25,900)
Apartment1.add_tenant('Sam',25,700)
Apartment1.add_tenant('Chris',25,800)
#Apartment1.add_tenant('Tom',25,900)

#test credit score average
puts Apartment1.credit_average

puts Apartment1.credit_check


#test apartment class test delete_tenant
Apartment1.delete_tenant('Tom')

Apartment1.delete_all_tenant

puts Apartment1.inspect




# test building class
building = Building.new('417 river grove')

#test building class app_apartment
building.add_apartment(999,900,30,3,1)

building.add_apartment(100,900,30,3,1)

puts building.inspect

#test building class delete apartment
building.delete_apartment(999)

puts building.inspect






pry.binding
