require_relative '../lib/building.rb'
require_relative '../lib/apartment.rb'
require 'pry'

#Tenant creditcheck
puts 'tenents credit check'
tenant1 = Tenant.new('Tom',24,720)
puts tenant1.credit_check

#test apartment class
Apartment1 = Apartment.new(417,900,30,3,1)

#test Apartment's class's add tenant
# Apartment1.add_tenant('Tom',25,900)
# Apartment1.add_tenant('Sam',25,700)
# Apartment1.add_tenant('Chris',25,800)
# Apartment1.add_tenant('Tom',25,900)

#test credit score average
puts 'apartments credit average/credit status'
puts Apartment1.credit_average

puts Apartment1.credit_check


#test apartment class test delete_tenant
puts 'delete tenants tom'
Apartment1.delete_tenant('Tom')

puts Apartment1.inspect

puts 'delete all tenants'
Apartment1.delete_all_tenant

puts Apartment1.inspect


# test building class. create apartment objects.
building = Building.new('417 river grove')
apartment2 = Apartment.new(999,900,30,3,1)
apartment3 = Apartment.new(100,900,30,3,1)
apartment4 = Apartment.new(800,900,30,3,1)
apartment5 = Apartment.new(900,1000,30,3,1)
apartment4.add_tenant('Tom',25,900)
apartment2.add_tenant('Sam',25,700)
apartment4.add_tenant('Chris',25,800)

#test building class add_apartment.
puts 'add apartments to building'
building.add_apartment(apartment2,apartment3,apartment4,apartment5)

puts building.inspect

##test building class delete apartment
puts 'delete apartment'
building.delete_apartment(100)

puts building.inspect

#test building class delete apartment. "someone is living here"
# apartment5.add_tenant('Sam',25,700)
# puts building.inspect
# building.delete_apartment(900)

#test building class delete apartment. "apartment doesn't exist"
# puts building.inspect
# building.delete_apartment(100)


#test total square
puts 'total square'
puts building.total_square_footage

#test monthly revenue
puts 'monthly revenue'
puts building.total_monthly_revenue
#test tenants_list
puts 'tenents list'
puts building.tenants_list.inspect

puts 'group_by_credit'
puts building.group_by_credit

pry.binding
