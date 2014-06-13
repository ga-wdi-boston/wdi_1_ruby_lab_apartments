# Jake Austin
# WDI Boston June comprehensive assessment
# Jun 13, 2014

require_relative '../lib/apartment'
class Building

  attr_reader :address, :apartments

  def initialize(address:)
    @address = address
    @apartments = []
  end

  def add_appt(appt)
    @apartments << appt
  end

  # assumes no two apartments have the same number
  def remove_appt(appt_num)
    @apartments.delete_if{ |appt| appt.number == appt_num }
  end

  def sq_footage
  end

  def monthly_revenue
  end

  def tenants
  end

  def appts_by_cred
  end


end
