require_relative 'tenant'
class Apartment
  attr_reader :number, :rent, :square_feet, :bedrooms, :bathrooms

  def initialize(number:, rent:, square_feet:, bedrooms:, bathrooms:)
    @number = number
    @rent = rent
    @square_feet = square_feet
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @total_tenants = []
  end

  def add_tenant(new_tenant)
    if new_tenant.credit_rating == "bad"
      raise "Bad credit rating"
    elsif @total_tenants.count >= @bedrooms
      raise "Too many tenants"
    else
      @total_tenants << new_tenant
    end
  end

  def remove_tenant(tenant)
    if @total_tenants.include?(tenant)
      @total_tenants.delete(tenant)
    else
      raise "Tenant not found"
  end

  def remove_all
    @total_tenants.clear
  end

  def avg_credit_score
    @total_tenants.map { |tenant| tenant.credit_score }.reduce(0, &:+) / @total_tenants.count
  end

=begin
  def credit_rating
    avg_score = avg_credit_score
  end
=end

end

=begin

### `Apartment`
has a number, rent, square footage, number of bedrooms, and number of bathrooms
#B-Instance variables
has many tenants
#B-Tenant is a subclass of apartment
the list of tenants should not be modified directly (bonus: actually prevent it from being modified directly)
#B-Private? At very least, not attr_accessor
has a method to add a tenant that raises an error if the tenant has a "bad" credit rating, or if the new tenant count would go over the number of bedrooms
has a method to remove a specific tenant either by object reference *or* by name (bonus: do this without checking classes), which raises an error if the tenant is not found
has a method that removes all tenants
has an average credit score, calculated from all tenants
has a credit rating, calculated from the average credit score using the logic below

=end
