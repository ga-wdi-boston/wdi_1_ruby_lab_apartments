#has an address
#has many apartments
#the list of apartments should not be modified directly (bonus: actually prevent it from being modified directly)
#has a method to add an apartment
#has a method to remove a specific apartment by its number, which raises an error if the number is not found or the apartment currently has any tenants (bonus: allow overriding this constraint)
#has a total square footage, calculated from all apartments
#has a total monthly revenue, calculated from all apartment rents
#has a list of tenants, pulled from the tenant lists of all apartments
#has a method to retrieve all apartments grouped by credit rating (bonus: sort the groups by credit score)

class Building
  attr_reader :address, :apartments
  NUMBER_APTS = 100

  def initialize(address, apartments: NUMBER_APTS)
    @address = address
    @apartments = apartments
  end

  def add_apts(number)
    NUMBER_APTS + number
  end

end
