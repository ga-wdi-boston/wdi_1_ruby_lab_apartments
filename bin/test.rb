require 'pry'
require_relative '../lib/tenant'
require_relative '../lib/apartment'
require_relative '../lib/building'

b = Building.new('51 Melcher Street')

a1 = Apartment.new(number: 12, area: 1000, rent: 1000, num_bedrooms: 2, num_bathrooms: 2)
a1.add_tenant(Tenant.new('Tom', 57, 660))
a1.add_tenant(Tenant.new('Alex', 30, 800))
b.add_apartment(a1)

a2 = Apartment.new(number: 22,  area: 1300, rent: 1300, num_bedrooms: 3, num_bathrooms: 2)
a2.add_tenant(Tenant.new('Scott', 57, 660))
a2.add_tenant(Tenant.new('Matt', 30, 620))
a2.add_tenant(Tenant.new('Floyd',28, 710))
b.add_apartment(a2)

a3 = Apartment.new(number: 32,  area: 1300, rent: 1300, num_bedrooms: 3, num_bathrooms: 2)
a3.add_tenant(Tenant.new('Scott twin', 57, 660))
a3.add_tenant(Tenant.new('Matt twin', 30, 620))
a3.add_tenant(Tenant.new('Floyd twin',28, 710))
b.add_apartment(a3)

binding.pry
