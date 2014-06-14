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
apartment2 = Apartment.new(999,900,30,3,1)
apartment3 = Apartment.new(100,900,30,3,1)
apartment4 = Apartment.new(800,900,30,3,1)
apartment4.add_tenant('Tom',25,900)
apartment2.add_tenant('Sam',25,700)
apartment4.add_tenant('Chris',25,800)

#test building class add_apartment
building.add_apartment(apartment2,apartment3,apartment4)

building.inspect

puts building.inspect

#test building class delete apartment
building.delete_apartment(100)

puts building.inspect

#test total square
puts building.total_square_footage

#test monthly revenue
puts building.total_monthly_revenue
#test tenants_list
puts building.tenants_list.inspect

puts building.group_by_credit

pry.binding
