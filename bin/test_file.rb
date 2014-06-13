require 'pry'
require_relative '../lib/tenant.rb'

clara = Tenant.new(name: "Clara", age: 22, credit_score: 700)

binding.pry
