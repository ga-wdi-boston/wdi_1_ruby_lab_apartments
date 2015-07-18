require 'pry'
#require_relative '../lib/tenant.rb' doesnt need to be referenced bc doesnt created new Tenant object
require_relative '../lib/apartment.rb'

class Building

initialize(tenants:, apts:, address:, )
@tenants = []
@apts = []
end

def add_apt(apartment:)
  @apts.push(:apartment)
end

def rmv_apt(apartment:)
  if :apartment.nil
    @apts.delete(:apartment)
  else
    raise "The apartment you are looking for does not exist"
end






end
