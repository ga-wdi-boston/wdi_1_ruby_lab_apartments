class Apartment

  attr_accessor :number, :rent, :sq_ft, :beds, :baths, :tenants

  def initialize(number:, rent:, sq_ft:, beds:, baths:)
    @number, @rent, @sq_ft, @beds, @baths = number, rent, sq_ft, beds, baths
    @tenants = []
  end

  def add_tenant(tenant)

    # Possible errors
    if tenant.credit_rating == "bad"
      raise "Tenant error: This tenant has a bad credit rating"
    elsif tenants.length == beds
      raise "Apartment error: This apartment is full."

    else
      tenants << tenant
    end
  end

end
