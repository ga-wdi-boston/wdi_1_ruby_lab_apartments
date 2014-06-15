require 'pry'









# has a method to retrieve all apartments grouped by credit rating (bonus: sort the groups by credit score)


class Building
  attr_accessor address:

  def initialize(address)
    # has an address
    @address = address
    # has many apartments (array)
    # the list of apartments should not be modified directly (bonus: actually prevent it from being modified directly)
    @apts = []
  end

  # has a method to add an apt
  def add_apt(apt) #(who ever calls this should pass a variable of an Apartment.new)
    @apts.push(apt)
  end

 #has a method to remove a specific apartment by its number, which raises an error if the number is not found or the apartment currently has any tenants (bonus: allow overriding this constraint)
  def remove_apt(number)
    @apts.delete_if{ |apt| apt.number == number)
    if @apts.include?(number) == false
      raise 'ERROR-NO APARTMENT NUMBER FOUND'
    end
  end

  # has a total square footage, calculated from all apartments
  # needs to take the sq footage from each object in the apts array and add together
  def total_sq_feet
    apts.map{ |apt| apt.sq_footage }.reduce(:+)
  end

  # has a total monthly revenue, calculated from all apartment rents
  def monthly_revenue
    apts.map{ |apt| apt.rent }.reduce(:+)
  end

  # has a list of tenants, pulled from the tenant lists of all apartments
  def tenant_list(tenants) #(whoever call this needs to pass the Variable of the Apartment.new.tenants array)
    apts.map{ |apt| apt.}


binding.pry
