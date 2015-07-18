require_relative '../lib/apartment.rb'
require_relative '../lib/building.rb'
require_relative '../lib/tenant.rb'

#instance of tenant method and methods to test
mike = Tenant.new(name: 'mike', age: '24', credit_score: 710)
andy = Tenant.new(name: 'andy', age: '26', credit_score: 610)
james = Tenant.new(name: 'james', age: '25', credit_score: 630)

puts mike.inspect
puts mike.credit_rating

#instance of apartment method and methods to test
donnybrook = Apartment.new(number: 5, rent: 1000, square_ft: 2000, beds: 2, baths: 1)
limerick = Apartment.new(number: 7, rent: 2000, square_ft: 4000, beds: 3, baths: 1)

puts donnybrook.inspect

donnybrook.add_tenant(mike)
donnybrook.add_tenant(andy)
limerick.add_tenant(james)

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

puts "Building tests"

castle = Building.new('Dublin')
puts castle.inspect

castle.add_apartment(donnybrook)
puts castle.apartments

puts "check for remove"
castle.remove(5)
puts castle.apartments

castle.add_apartment(donnybrook)
castle.add_apartment(limerick)

puts castle.total_square_ft
puts castle.total_monthly_rev

puts castle.tenant_list

puts castle.retrieve_apartments('good')





