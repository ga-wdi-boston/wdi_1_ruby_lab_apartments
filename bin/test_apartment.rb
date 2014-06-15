require_relative '../lib/apartment.rb'

apartment = Apartment.new(2, 3600, 2000, 4, 2)
#tenant1 = Tenant.new{ name: 'Jodi', age: 28, credit_score: 550 }
#tenant2 = Tenant.new{ name: 'John', age: 30, credit_score: 720 }
#tenant3 = Tenant.new{ name: 'Kim', age: 45, credit_score: 660 }

puts "My apartment is number #{apartment.number}, it costs #{apartment.rent} per month, is #{apartment.square_footage} square feet, has #{apartment.bedrooms} bedrooms and #{apartment.bathrooms} bathrooms."

#puts "I am adding a new tenant named #{apartment.add_tenant('John Smith')} to my apartment."

#puts "I am adding a new tenant named #{apartment.add_tenant('tenant')} to my apartment."


apartment.add_tenant('Jodi', 28, 550)
apartment.add_tenant('John', 30, 720)
apartment.add_tenant('Kim', 45, 660)
puts apartment.tenants
#puts tenant1.credit_score
#puts tenant2.credit_score
#puts tenant3.credit_score
#puts apartment.tenants[0]
#apartment.remove_tenant(3)
#apartment.remove_all_tenants
#puts apartment.tenants


# puts "#{tenant.credit_rating}"
