# Jake Austin
# WDI Boston June comprehensive assessment
# Jun 13, 2014

require_relative 'tenant'

class Apartment

  attr_reader :number, :sq_footage, :num_beds, :num_baths, :tenants

  def initialize(number:, sq_footage:, num_beds:, num_baths:)
    @numbber, @sq_footage, @num_beds, @num_baths = number, sq_footage, num_beds, num_baths
    # new appt initialized with no tenants, must be added with method
    @tenants = []
  end

  def add_tenant(new_tenant)
  end

  # tenants removed by passing in object
  def remove_tenant(tenant)
  end

  def clear_house
  end

  def avg_cred
  end

  def cred_rating
  end

end
