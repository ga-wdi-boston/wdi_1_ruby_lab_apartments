require_relative "../lib/apartment.rb"
require_relative "../lib/tenant.rb"
require "pry"

home = Apartment.new(number: 2, rent: 4000, square_footage: 1000, bedrooms: 4, bathrooms: 2)

zack = Tenant.new(name: "Zack", age: "24", credit_score: 1000)
paul = Tenant.new(name: "Paul", age: "24", credit_score: 600)


home.add_tenant(zack)
home.add_tenant(paul)


binding.pry
