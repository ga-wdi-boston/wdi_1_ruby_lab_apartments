# Jake Austin
# WDI Boston June comprehensive assessment
# Jun 13, 2014

require_relative 'tenant'

class Apartment
    CRED_RATINGS = {
                  760 => 'excellent',
                  725 => 'great',
                  660 => 'good',
                  560 => 'mediocre',
                  0 => 'bad'
                }

  attr_reader :number, :sq_footage, :num_beds, :num_baths

  def initialize(number:, sq_footage:, num_beds:, num_baths:)
    @number, @sq_footage, @num_beds, @num_baths = number, sq_footage, num_beds, num_baths
    # new appt initialized with no tenants, must be added with method
    @tenants = []
  end

  def add_tenant(new_tenant)
    if new_tenant.cred < 560
      raise "Bad credit, reject applicant"
    elsif @tenants.count == @num_beds
      raise "Full house, reject applicant"
    else
      @tenants << new_tenant
    end
  end

  # tenants removed by passing in object
  def remove_tenant(tenant)
    if @tenants.include?(tenant)
      @tenants.delete(tenant)
      puts "removed #{tenant.name}"
    else
      raise "That tenant does not live in this apartment"
    end
  end

  def clear_house
    @tenants.clear
  end

  def avg_cred
    @tenants.map { |tenant| tenant.cred }.reduce(0, &:+) / @tenants.count
  end

  def cred_rating
    avg = avg_cred
    CRED_RATINGS.each { |value, rate| return rate if avg >= value }
  end

end
