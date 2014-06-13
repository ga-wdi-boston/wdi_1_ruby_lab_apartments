require 'pry'
require_relative '../lib/tenant.rb'

tenant = Tenant.new('John Doe', 28, 690)

binding.pry
