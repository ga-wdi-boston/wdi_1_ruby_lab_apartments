# ### `Building`
# * has an address
# * has many apartments
# * the list of apartments should not be modified directly (bonus: actually prevent it from being modified directly)
# * has a method to add an apartment
# * has a method to remove a specific apartment by its number, which raises an error if the number is not found or the apartment currently has any tenants (bonus: allow overriding this constraint)
# * has a total square footage, calculated from all apartments
# * has a total monthly revenue, calculated from all apartment rents
# * has a list of tenants, pulled from the tenant lists of all apartments
# * has a method to retrieve all apartments grouped by credit rating (bonus: sort the groups by credit score)
require_relative 'apartment'

class Building
  attr_reader :address, :apartments

  def initialize(address:, apartments: [])
    @address = address
    @apartments = apartments
  end

  def add_apartment(apartment:)
    @apartments << apartment
  end

  def remove_apartment(apartment:)
    @apartments.remove(apartment)
  end

  def total_square_footage
    total = 0
    apartments.each{|apt| total += apt.sqr_foot}
    total
  end

  def total_monthly_revenue
    total = 0
    apartments.each{|apt| total += apt.rent}
    total
  end

  #need to check
  def tenant_list
    tenants = []
    apartments.each{|apt| total += apt.tenants}
    tenants
  end

  def apartments_by_credit

  end

end
