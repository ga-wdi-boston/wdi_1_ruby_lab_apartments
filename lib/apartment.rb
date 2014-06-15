require_relative '../lib/tenant.rb'

class Apartment

  attr_accessor :number, :rent, :square_footage, :bedroom, :bathroom
  attr_reader :tenants

  def initialize(number,rent,square_footage,bedroom,bathroom)
    @number,@rent,@square_footage = number,rent,square_footage
    @bedroom,@bathroom = bedroom,bathroom
    @tenants = []
  end

  def add_tenant(name,age,credit_score)
    tenant = Tenant.new(name,age,credit_score)
    if tenant.credit_check == 'bad'
      raise "bad credit rating"
    elsif tenants.length + 1 > bedroom
      raise "Tenants exceed bedroom number"
    end
    @tenants << tenant

  end

  def delete_tenant(name)
    tenants.delete_if {|tenant| tenant.name == name}
    #can't detelete by reference id
  end

  def delete_all_tenant
    tenants.clear
  end

  def credit_average
    #tenants.map(&:score.credit_score).reduce(0, :+) #0 means it starts adding up from 0.
    #if there're no tenents in the apartments it will return nil as a credit average.
    tenants.map{|score| score.credit_score}.reduce(0){|sum,x| sum + x } / tenants.length if tenants.length > 0
  end

 def credit_check
    if credit_average >= 760
      'excellent'
    elsif credit_average >= 725
      'great'
    elsif credit_average >= 660
      'good'
    elsif credit_average >= 560
      'medicore'
    else
      'bad'
    end
  end

end

