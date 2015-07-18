require_relative '../lib/tenant.rb'

tenant = Tenant.new('Jodi', 28, 720)


puts "My tenant is #{tenant.name}, who is #{tenant.age} years old and has a credit score of #{tenant.credit_score}."

puts "#{tenant.name}'s credit rating is #{tenant.credit_rating}"
