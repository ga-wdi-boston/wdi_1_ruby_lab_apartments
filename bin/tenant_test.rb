require_relative "../lib/tenant.rb"

zack = Tenant.new(name: "Zack", age: "24", credit_score: 1000)

puts zack.inspect
puts zack.credit_rating
