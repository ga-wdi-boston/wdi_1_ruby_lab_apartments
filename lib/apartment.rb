require 'pry'
require_relative '..lib/tenant.rb'

class Apartment < Tenant

  attr_accessor :rent, :num_tenants #not sure if tenants should go here
  attr_reader :apt_num, :sq_footage, :num_bedrooms, :num_bathrooms

  def initialize(apt_num:, sq_footage:, num_bedrooms:, num_bathrooms:, rent:, num_tenants:)
    super
    @apt_num = apt_num
    @sq_footage = sq_footage
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @rent = rent
    @num_tenants = num_tenants
    @individual_tenants = []
  end

  def tenant_error(credit_score:, num_bedrooms:)
    raise "Warning! Shitty tenant. Do not offer a lease."
    raise "Warning! There are not enough bedrooms. Do not offer lease."

  rescue
  end

  def evict_all #can't test until i have an array of tenants
    if its not empty or eviction
    individual_tenants.map.delete
  end

  def avg_credit
    individual_tenants.credit_rating.reduce(&:+)/individual_tenants.length
  end









end
