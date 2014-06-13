require_relative '../lib/apartment'

basement_studio = Apartment.new(1, 850, 320, 1, 1)

puts "Unit #{basement_studio.number} has #{basement_studio.bedrooms} bedroom(s), #{basement_studio.baths} bath(s), is #{basement_studio.sq_ft} square feet, with monthly rent of $#{basement_studio.rent}!"

jonie = Tenant.new("Jonie", 28, 700)

smuggler = Tenant.new("Sam Smuggler", 22, 520)

dr_melissa = Tenant.new("Dr. Melissa Lawson", 34, 780)

puts "Smug's credit rating is "

basement_studio.add_tenant(smuggler)

puts "#{basement_studio.all_tenants}"

