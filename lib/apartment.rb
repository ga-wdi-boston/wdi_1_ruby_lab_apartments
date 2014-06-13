# has a number, rent, square footage, number of bedrooms, and number of bathrooms
# has many tenants
# the list of tenants should not be modified directly (bonus: actually prevent it from being modified directly)
# has a method to add a tenant that raises an error if the tenant has a "bad" credit rating, or if the new tenant count would go over the number of bedrooms
# has a method to remove a specific tenant either by object reference or by name (bonus: do this without checking classes), which raises an error if the tenant is not found
# has a method that removes all tenants
# has an average credit score, calculated from all tenants
# has a credit rating, calculated from the average credit score using the logic below

class Apartment

  attr_reader :number, :rent, :square_footage, :bedrooms, :bathrooms

  def initialize (number:, rent:, square_footage:, bedrooms:, bathrooms:)
    @number, @rent, @square_footage, @bedrooms, @bathrooms = number, rent, square_footage, bedrooms, bathrooms
    @tenants = []
  end

  def add_tenant(tenant)
    if tenant.credit_rating == "bad"
      raise "The tenant's credit rating is not good enough to live here"
    elsif (@tenants.length == @bedrooms)
      raise "There are not enough bedrooms to accomodate the tenant"
    else
      @tenants << tenant
    end
  end

  def evict(tenant)
    @tenants.delete_if { |candidate| (candidate.object_id == tenant || candidate.name.casecmp(tenant) == 0) }
  end

end
