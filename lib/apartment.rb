# has a number, rent, square footage, number of bedrooms, and number of bathrooms
# has many tenants
# the list of tenants should not be modified directly (bonus: actually prevent it from being modified directly)
# has a method to add a tenant that raises an error if the tenant has a "bad" credit rating, or if the new tenant count would go over the number of bedrooms
# has a method to remove a specific tenant either by object reference or by name (bonus: do this without checking classes), which raises an error if the tenant is not found
# has a method that removes all tenants
# has an average credit score, calculated from all tenants
# has a credit rating, calculated from the average credit score using the logic below

# figure out how to throw multiple errors for evict
# figure out how to do average credit rating without copy pasting (modules/mixins)

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
    raise "No tenant found with that name/id" if !(@tenants.reject! { |candidate| (candidate.object_id == tenant || candidate.name.casecmp(tenant) == 0) })
  end

  def evict_all
    @tenants = []
  end

  def average_credit_score
    @tenants.map(&:credit_score).reduce(0, :+) / @tenants.length
  end

  # look up how to do this without copy/pasting other method
  def average_credit_rating
    if average_credit_score > 760
      "excellent"
    elsif average_credit_score > 725
      "great"
    elsif average_credit_score > 660
      "good"
    elsif average_credit_score > 560
      "mediocre"
    else
      "bad"
    end
  end


end
