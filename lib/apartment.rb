#has a number, rent, square footage, number of bedrooms, and number of bathrooms
#has many tenants
#the list of tenants should not be modified directly (bonus: actually prevent it from being modified directly)
#has a method to add a tenant that raises an error if the tenant has a "bad" credit rating, or if the new tenant count would go over the number of bedrooms
#has a method to remove a specific tenant either by object reference or by name (bonus: do this without checking classes), which raises an error if the tenant is not found
#has a method that removes all tenants
#has an average credit score, calculated from all tenants
#has a credit rating, calculated from the average credit score using the logic below

require_relative '../lib/tenant.rb'
require_relative '../lib/building.rb'

class Apartment

  attr_accessor :number, :rent, :square_footage, :bedrooms, :bathrooms

  def initialize(number, rent, square_footage, bedrooms, bathrooms)
    @number = number
    @rent = rent
    @square_footage = square_footage
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
  end

  def add_tenant(tenant)
    @tenants << tenant
  end

end

#if credit_rating == "bad"
#    raise "Tenant not accepted"
#    else
#      "Tenant accepted"
