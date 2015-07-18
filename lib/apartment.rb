require 'pry'

class Apartment

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

  def remove_all_tenants
    @tenants.clear
  end
end

binding.pry
