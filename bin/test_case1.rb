#require '../lib/building.rb'
#require '../lib/apartment.rb'
require '../lib/tenant.rb'
require 'pry'

julie = Tenant.new(first_name: 'Julie', last_name: 'Soforenko', age: 29, credit_score: 740)

credit_rating_1 = julie.create_credit_rating(credit_score: 740)
puts credit_rating_1

binding.pry
