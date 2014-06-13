require_relative '../lib/apartment.rb'
require_relative '../lib/tenant.rb'
require_relative '../lib/building.rb'

building1 = Apartment.new("455 Main Street, Providence, RI 02909", 16)

apt1 = Apartment.new(1, 1600, 500, 2, 1)
apt2 = Apartment.new(2, 2000, 1200, 2, 2)
apt3 = Apartment.new(3, 1800, 800, 1, 1)
apt4 = Apartment.new(4, 1000, 300, 1, 1)

tenant1 = Tenant.new("Maura", 42, 520)
tenant2 = Tenant.new("Joe", 42, 680)
tenant3 = Tenant.new("Katryn", 29, 740)


puts "Apartment #{apt1.apartment_num} is #{apt1.sq_footage} square feet, has #{apt1.bedrooms} bedroom(s), #{apt1.bathrooms} bathroom(s) and costs #{apt1.rent} dollars."
