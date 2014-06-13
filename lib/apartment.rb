class Apartment
  # X  has a number, rent, square footage, number of bedrooms, and number of bathrooms
  # X has many tenants
  # the list of tenants should not be modified directly (bonus: actually prevent it from being modified directly)


  # has an average credit score, calculated from all tenants
  # has a credit rating, calculated from the average credit score using the logic below
  attr_reader :apartment_num, :sq_footage, :bedrooms, :bathrooms, :max_tenants, :avg_credit_score, :tenants
  attr_accessor :rent

  def initialize(apartment_num, rent, sq_footage, bedrooms, bathrooms)
    @apartment_num, @rent, @sq_footage, @bedrooms, @bathrooms  = apartment_num, rent, sq_footage, bedrooms, bathrooms
    @max_tenants = @bedrooms*2
    @tenants = []
    @avg_credit_score = #add credit score of all tenantstenantx.credit_score#of tenants
  end
  # has a method to add a tenant that raises an error if the tenant has a "bad" credit rating, or if the new tenant count would go over the number of bedrooms

  # has a method to remove a specific tenant either by object reference or by name (bonus: do this without checking classes), which raises an error if the tenant is not found

  # has a method that removes all tenants


end
