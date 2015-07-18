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

class Apartment < Tenant

  # Do I need tenants as an accessor, or not because we don't want it directly modifiable?
  attr_accessor :number, :rent, :square_footage, :bedrooms, :bathrooms, :tenants

  def initialize(number, rent, square_footage, bedrooms, bathrooms)
    @number = number
    @rent = rent
    @square_footage = square_footage
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
  end


  def add_tenant(tenant)
    if tenant.credit_rating == 'bad'
      raise "Tenant not accepted"
    elsif tenants == bedrooms
      raise "Not enough space"
    else
    @tenants << tenant
  end

# original add_tenant method that I had (when @tenants = [])
# def add_tenant(tenant)
#    @tenants = tenant
# end

#ask about adding multiple tenants at a time with insert
  #def add_tenant(tenant)
  #  @tenants.insert(tenant)
  #end

  def remove_tenant(tenant)
    @tenants.delete(tenant) or @tenants.delete_at(tenant.to_i)
  end

  def remove_all_tenants
    @tenants.clear
  end

#do I need to use a Hash for tenants in order to access credit_score as key? Not complete
  def avg_credit_score
    # need sum of all tenants' credit score / number of tenants
    sum = @tenants.inject{ |sum, credit_score| sum + credit_score}

  end

# In test file, this pulls in the credit rating calc from the tenant.rb file, but is not raising the warning I want.



end








