require_relative 'building'

class Apartment < Building
  attr_reader :tenants
  attr_accessor :number, :rent, :square_footage, :bedrooms, :bathrooms

  def initialize (number:, rent:, square_footage:, bedrooms: 1, bathrooms: 0)
    @number, @rent, @square_footage, @bedrooms, @bathrooms, @tenants = number, rent, square_footage, bedrooms, bathrooms, []
  end

  def new_tenant
    @tenants << Tenant.new
  end


end
