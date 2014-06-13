require_relative '../lib/apartment.rb'
require_relative '../lib/building.rb'
require_relative '../lib/tenant.rb'

#instance of tenant method and methods to test
mike = Tenant.new(name: 'mike', age: '24', credit_score: 710)
andy = Tenant.new(name: 'andy', age: '26', credit_score: 610)

puts mike.inspect
puts mike.credit_rating

#instance of apartment method and methods to test
donnybrook = Apartment.new(number: 5, rent: 1000, square_ft: 2000, beds: 2, baths: 1)

puts donnybrook.inspect

donnybrook.add_tenant(mike)
donnybrook.add_tenant(andy)

#method to remove tenants
#donnybrook.clear_tenants - not yet working

puts donnybrook.tenants

donnybrook.remove_tenant('mike')

puts "break here"
puts donnybrook.tenants

puts "break again"
donnybrook.clear_tenants
puts donnybrook.tenants

donnybrook.add_tenant(mike)
donnybrook.add_tenant(andy)

puts donnybrook.average_score
puts donnybrook.credit_rating

