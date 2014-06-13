require 'pry'
require_relative '../lib/tenant.rb'
require_relative '../lib/apartment.rb'
require_relative '../lib/credit_ratings.rb'

binding.pry

clara = Tenant.new(name: "Clara", age: 22, credit_score: 700)
erika = Tenant.new(name: "Erika", age: 21, credit_score: 600)
vivian = Tenant.new(name: "Dora", age: 22, credit_score: 720)
dora = Tenant.new(name: "Dora", age: 21, credit_score: 400)

floor2 = Apartment.new(number: 375, rent: 775, sq_ft: 300, beds: 4, baths: 2)

floor2.add_tenant(clara)
floor2.add_tenant(erika)
floor2.add_tenant(vivian)

binding.pry
