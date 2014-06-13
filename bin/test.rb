require_relative '../lib/building.rb'
require_relative '../lib/apartment.rb'
require 'pry'

#Tenant
tenant1 = Tenant.new('Tom',24,720)
puts tenant1.credit_check

#test apartment
Apartment1 = Apartment.new(417,900,30,3,1)

#Apartment's test add tenant
Apartment1.add_tenant('Tom',25,900)
Apartment1.add_tenant('Tom',25,900)
Apartment1.add_tenant('Tom',25,900)
Apartment1.add_tenant('Tom',25,900)

puts Apartment1.inspect

pry.binding


# test building
puts Building.new('417 river grove')
