require_relative 'apartment'

class Building
  attr_reader :address, :total_apartments

  def initialize(address:)
    @address = address
    @total_apartments = []
  end

  def add_apartment(apartment)
    @total_apartments << apartment
  end

=begin
  def remove_apartment(number, )

    raise "Number not found or apartment currently has tenants"
  end
=end

  def total_area
    @total_apartments.map { |appt| appt.sq_footage }.reduce(0, &:+)
  end

  def total_revenue
    @total_apartments.map { |appt| appt.rent }.reduce(0, &:+)
  end

  def tenants_list
    total_tenants = []
    @total_apartments.map { |appt| total_tenants.concat(appt.tenants) }
    total_tenants
  end

=begin
  def apartments_by_credit_rating
  end
=end

end

=begin
### `Building`
has an address
has many apartments
#B-Apartment is a subclass of building
the list of apartments should not be modified directly (bonus: actually prevent it from being modified directly)
#B-Private? At very least, not attr_accessor
has a method to add an apartment
has a method to remove a specific apartment by its number, which raises an error if the number is not found or the apartment currently has any tenants (bonus: allow overriding this constraint)
has a total square footage, calculated from all apartments
has a total monthly revenue, calculated from all apartment rents
has a list of tenants, pulled from the tenant lists of all apartments
has a method to retrieve all apartments grouped by credit rating (bonus: sort the groups by credit score)

=end
