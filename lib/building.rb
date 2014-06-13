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
  def remove_appt(appt_num, evict: false)
    if @apartments.select{ |appt| appt.number == appt_num}.empty?
      raise "Apartment 404 not found"
    else
      success = @apartments.reject!{ |appt| appt.number == appt_num && (appt.tenants.empty? || evict) }
      raise "You must evict tenants to remove this apartment" unless success
    end
  end

  def sq_footage
    @apartments.map { |appt| appt.sq_footage }.reduce(0, &:+)
  end

  def monthly_revenue
    @apartments.map { |appt| appt.rent }.reduce(0, &:+)
  end

  def tenants
    all_tenants = []
    @apartments.map { |appt| all_tenants.concat(appt.tenants) }
    all_tenants
  end

  def appts_by_cred
    @apartments.group_by { |appt| appt.cred_rating }
  end

end
