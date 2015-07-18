require_relative '../lib/apartment.rb'

apartment = Apartment.new(2, 3600, 2000, 4, 2)
tenant1 = Tenant.new('Jodi', 28, 550)
tenant2 = Tenant.new('John', 30, 720)
tenant3 = Tenant.new('Kim', 45, 660)

puts "My apartment is number #{apartment.number}, it costs #{apartment.rent} per month, is #{apartment.square_footage} square feet, has #{apartment.bedrooms} bedrooms and #{apartment.bathrooms} bathrooms."

#puts "I am adding a new tenant named #{apartment.add_tenant('John Smith')} to my apartment."

#puts "I am adding a new tenant named #{apartment.add_tenant('tenant')} to my apartment."


apartment.add_tenant(tenant1)
apartment.add_tenant(tenant2)
apartment.add_tenant(tenant3)
puts apartment.tenants
#HOW DO YOU SHOW THE WHOLE ARRAY of tenants?
#puts apartment.@tenants
#puts tenant1.credit_score
#puts tenant2.credit_score
#puts tenant3.credit_score
#puts apartment.tenants[0]
#apartment.remove_tenant(3)
#apartment.remove_all_tenants
#puts apartment.tenants


# puts "#{tenant.credit_rating}"
