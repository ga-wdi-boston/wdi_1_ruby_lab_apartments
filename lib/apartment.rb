
#has an average credit score, calculated from all tenants
#has a credit rating, calculated from the average credit score using the logic below
require 'pry'

class Apartment
  #has a number, rent, square footage, number of bedrooms, and number of bathrooms
  attr_accessor :number, :rent, :sq_footage, :number_of_bedrooms, :number_of_bathrooms
  attr_reader :tenants

  def initialize(number, rent, sq_footage, number_of_bedrooms, number_of_bathrooms)
    @number = number
    @rent = rent
    @sq_footage = sq_footage
    @number_of_bedrooms = number_of_bedrooms
    @number_of_bathrooms = number_of_bathrooms
    @tenants = []
  end

  # add a tenant, but if it has bad credit or there are not enough bedrooms, report an error
  def add_tenant(tenant) #(who ever calls this should pass a variable of a Tenant.new)
    @tenants << tenant
    if tenant.credit_rating == "bad"
      raise 'ERROR- DO NOT TRUST THIS TENANT'
    end
    if @tenants.count > number_of_bedrooms
      raise 'ERROR - TENANT OVERLOAD'
    end
  end

  def remove_tenant(tenant)
    @tenants.delete(tenant) {'ERROR-NO TENANT FOUND'}
  end

  #has a method that removes all tenants
  def remove_all_tenants
    @tenants.clear
  end
end

binding.pry
