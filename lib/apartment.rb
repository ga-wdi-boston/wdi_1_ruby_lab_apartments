require 'pry'






#has a method that removes all tenants
#has an average credit score, calculated from all tenants
#has a credit rating, calculated from the average credit score using the logic below



class Apartment
  #has a number, rent, square footage, number of bedrooms, and number of bathrooms
  attr_accessor number, rent, sq_footage, number_of_bedrooms, number_of_bathrooms

  def initialize(number, rent, sq_footage, number_of_bedrooms, number_of_bathrooms)
    @number = number
    @rent = rent
    @sq_footage = sq_footage
    @number_of_bedrooms = number_of_bedrooms
    @number_of_bathrooms = number_of_bathrooms
    #has many tenants
    #the list of tenants should not be modified directly (bonus: actually prevent it from being modified directly)
    @tenants = []
  end

  # add a tenant, but if it has bad credit or there are not enough bedrooms, report an error
  def add_tenant(name)
    tenants << name
    if name.credit_rating = "bad"
      raise 'ERROR- DO NOT TRUST THIS TENANT'
    end
    if tenants.count > number_of_bedrooms
      raise 'ERROR - TENANT OVERLOAD'
    end
  end

  #has a method to remove a specific tenant either by object reference or by name (bonus: do this without checking classes), which raises an error if the tenant is not found

  def remove_tenant(name)
    tenants.delete_if? { |tenant| tenant.name == name }
    if tenant.name != name
      raise 'ERROR- NO TENANT FOUND'
    end
  end


end
