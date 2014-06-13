require_relative '../lib/tenant.rb'

class Apartment

  attr_accessor :number, :rent, :square_footage, :bedroom, :bathroom
  attr_reader :tenants

  def initialize(number,rent,square_footage,bedroom,bathroom)
    @number,@rent,@square_footage = number,rent,square_footage
    @bedroom,@bathroom = bedroom,bathroom
    @tenants = Array.new(0)
  end

  def add_tenant(name,age,credit_score)
    tenant = Tenant.new(name,age,credit_score)
    if tenant.credit_check == 'bad'
      raise "bad credit rating"
    elsif @tenants.length + 1 > bedroom
      raise "Tenants exceed bedroom number"
    end
    @tenants << tenant

  end

  def delete_tenant(name)
    self.tenants.delete_if {|tenant| tenant.name == name}
    #can't detelete by reference id
  end

  def delete_all_tenant
    self.tenants.clear
  end





end

