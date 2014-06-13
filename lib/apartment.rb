class Apartment
  attr_reader :tenants, :bedrooms

  def initialize (number:, rent:, square_footage:, bedrooms: 1, bathrooms: 0)
    @number, @rent, @square_footage, @bedrooms, @bathrooms, @tenants = number, rent, square_footage, bedrooms, bathrooms, []
  end

  def new_tenant(tenant)
    if tenant.credit_rating == 'bad'
      raise "You have bad credit. Crap!"
    elsif tenants.count >= bedrooms
      raise "No room for you!"
    else
      @tenants.push(tenant)
    end
  end

end
