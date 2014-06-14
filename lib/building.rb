require_relative '../lib/apartment.rb'
class Building
  attr_accessor :address
  attr_reader :apartments

  def initialize(address)
    @address = address
    @apartments = Array.new(0)
  end

  def add_apartment(number,rent,square_footage,bedroom,bathroom)
    @apartments << Apartment.new(number,rent,square_footage,bedroom,bathroom)
  end

  def delete_apartment(number)
    apartments.delete_if{|apartment| apartment.number == number}
    #can't detelete by reference id
  end

  # def delete_all_tenant
  #   self.tenants.clear
  # end

  # def credit_average
  #   self.tenants.map{|score| score.credit_score}.reduce(0){|sum,x| sum + x } / self.tenants.length
  # end

end
