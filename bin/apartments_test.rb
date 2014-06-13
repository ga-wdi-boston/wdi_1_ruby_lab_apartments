require 'pry'

require_relative '../lib/apartment.rb'
require_relative '../lib/building.rb'
require_relative '../lib/tenant.rb'

brook = Building.new(address: '59 Manchester Road, Brookline, MA, 02446')


binding.pry
