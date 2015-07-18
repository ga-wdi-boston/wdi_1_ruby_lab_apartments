require 'pry'

class Building
  attr_accessor :address
  attr_reader :apts

  def initialize(address)
    @address = address
    @apts = []
  end

  def add_apt(apt)
    @apts.push(apt)
  end

 #has a method to remove a specific apartment by its number, which raises an error if the number is not found or the apartment currently has any tenants (bonus: allow overriding this constraint)
  def remove_apt(number)
    @apts.delete_if{ |apt| apt.number == number}
    if @apts.include?(number) == false
      raise 'ERROR-NO APARTMENT NUMBER FOUND'
    end
  end

  def total_sq_feet
    apts.map{ |apt| apt.sq_footage }.reduce(:+)
  end

  def monthly_revenue
    apts.map{ |apt| apt.rent }.reduce(:+)
  end

  # has a list of tenants, pulled from the tenant lists of all apartments
  # take the array of tenants and list it by name
  def tenant_list(tenants) #(whoever call this needs to pass the Variable of the Apartment.new.tenants array)
    tenants.select{ |tenant| tenant.name }
  end

# has a method to retrieve all apartments grouped by credit rating (bonus: sort the groups by credit score)
def apt_credit_rating(tenants)
  # go into the tenants array and sort the objects by credit rating, then put into new arrays
  tenants.select{ |tenant| tenant.credit_rating }.sort

end


end



binding.pry
