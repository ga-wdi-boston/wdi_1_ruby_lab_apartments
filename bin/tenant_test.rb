

require_relative '../lib/tenant'

jonie = Tenant.new("Jonie", 28, 700)

smuggler = Tenant.new("Sam Smuggler", 22, 520)

dr_melissa = Tenant.new("Dr. Melissa Lawson", 34, 780)

puts "#{jonie.name}'s credit score is #{jonie.credit_score} with a #{jonie.credit_rating} credit rating."
