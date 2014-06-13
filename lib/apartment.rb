class Apartment
  attr_reader :tenants

  def initialize (number:, rent:, square_footage:, bedrooms: 1, bathrooms: 0)
    @number, @rent, @square_footage, @bedrooms, @bathrooms, @tenants = number, rent, square_footage, bedrooms, bathrooms, []
  end

  def new_tenant(tenant)
    @tenants.push(tenant)
  end

end
