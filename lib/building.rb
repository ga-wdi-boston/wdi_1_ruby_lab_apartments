require_relative '../lib/apartment.rb'
class Building
  attr_accessor :address
  attr_reader :apartments

  def initialize(address)
    @address = address
    @apartments = Array.new(0)
  end

  def add_apartment(*apartment)
    @apartments = apartment
  end

  def delete_apartment(number)
    #Creates an array(apartment) of arrays(tenants).
    apartment = apartments.select{|apartment| apartment.number == number}
    if apartment.empty?
      raise "Your apartment doesn't exit!"
    #Assingd [0] to look in to first array inside the partment array.
    elsif apartment[0].tenants.length != 0
      puts apartment.inspect
      raise "Someone is living here."
    end
    apartments.delete_if{|apartment| apartment.number == number}
  end

  def total_square_footage
    apartments.map{|footage| footage.square_footage}.reduce(0){|sum,x| sum + x }
  end

  def total_monthly_revenue
    apartments.map{|rents| rents.rent}.reduce(0){|sum,x| sum + x }
  end

  def tenants_list
    apartments.map{|tenants_list| tenants_list.tenants}
  end

  def group_by_credit
    apartments.group_by{|apartment| apartment.credit_average }
  end

end
