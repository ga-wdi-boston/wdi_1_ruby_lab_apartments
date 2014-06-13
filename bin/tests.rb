require_relative '../lib/apartment'
require 'pry'

jake = Tenant.new(name: "Jake Austin", age: 21, cred: 600)

dan = Tenant.new(name: "Dan Oleary", age: 21, cred: 600)

chris = Tenant.new(name: "Chris Garcia", age: 21, cred: 700)

konrad = Tenant.new(name: "Konrad Gessler", age: 21, cred: 650)

reject = Tenant.new(name: "Rejected", age: 5, cred: 300)

puts jake.inspect

house = Apartment.new(number: 2, sq_footage: 2000, num_beds: 4, num_baths: 1)

puts house.inspect

house.add_tenant(jake)
house.add_tenant(chris)
house.add_tenant(konrad)
house.add_tenant(dan)

binding.pry
