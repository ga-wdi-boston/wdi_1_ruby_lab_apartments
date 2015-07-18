#require '../lib/building.rb'
require '../lib/apartment.rb'
require '../lib/tenant.rb'
require 'pry'

julie = Tenant.new(first_name: 'Julie', last_name: 'Soforenko', age: 29, credit_score: 640)
carrie = Tenant.new(first_name: 'Carrie', last_name: 'Ziskind', age: 27, credit_score: 780)
mikey = Tenant.new(first_name: 'Michael', last_name: 'Soforenko', age: 24, credit_score: 700)
sarah = Tenant.new(first_name: 'Sarah', last_name: 'Colen', age: 28, credit_score: 600)
rachel = Tenant.new(first_name: 'Rachel', last_name: 'Colen', age: 24, credit_score: 540)

individual_tenants = %w(julie carrie mikey sarah rachel)
individual_tenants.evict_all

credit_rating_1 = julie.create_credit_rating(credit_score: 740)



binding.pry
