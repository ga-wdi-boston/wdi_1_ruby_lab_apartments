require_relative '../lib/tenant.rb'
require_relative '../lib/apartment.rb'

devin = Tenant.new(name: "Devin", age: 26, credit_score: 700)
paul = Tenant.new(name: "Paul", age: 29, credit_score: 600)
luke = Tenant.new(name: "Luke", age: 29, credit_score: 800)
will = Tenant.new(name: "Will", age: 29, credit_score: 800)

sf_apt = Apartment.new(number: 1666, square_footage: 2000, num_bedrooms: 3, num_bathrooms: 1, rent: 3000)

sf_apt.add_tenant(devin)
sf_apt.add_tenant(paul)
sf_apt.add_tenant(luke)

sf_apt.remove_tenant("Luke")

sf_apt.add_tenant(will)

# sf_apt.remove_all

puts sf_apt.average_credit_score
puts sf_apt.average_credit_rating

# puts sf_apt.tenants

