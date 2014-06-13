class Apartment < Building
  # has a number, rent, square footage, number of bedrooms, and number of bathrooms
  # has many tenants
  # the list of tenants should not be modified directly (bonus: actually prevent it from being modified directly)
  # has a method to add a tenant that raises an error if the tenant has a "bad" credit rating, or if the new tenant count would go over the number of bedrooms
  # has a method to remove a specific tenant either by object reference or by name (bonus: do this without checking classes), which raises an error if the tenant is not found
  # has a method that removes all tenants
  # has an average credit score, calculated from all tenants
  # has a credit rating, calculated from the average credit score using the logic below
  def initialize
  end
end
