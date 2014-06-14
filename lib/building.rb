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
    apartment = apartments.select{|apartment| apartment.number == number}
    if apartment == []
      raise "Your apartment doesn't exit!"
    elsif apartment[0].tenants.length != 0
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
