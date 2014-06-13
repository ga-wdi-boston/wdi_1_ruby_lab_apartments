class Apartment

  attr_reader :number, :rent, :sq_footage, :bedrooms, :bathrooms, :tenants

  def initialize(number: number,
                 rent: rent,
                 sq_footage: sq_footage,
                 bedrooms: bedrooms,
                 bathrooms: bathrooms,
                 tenants: tenants)

    @number, @rent, @sq_footage, @bedrooms, @bathrooms, @tenants =
      number, rent, sq_footage, bedrooms, bathrooms, tenants
  end



end
