require 'pry'
require_relative '..lib/tenant.rb'

class Apartment < Tenant

  attr_accessor :rent, :num_tenants #not sure if tenants should go here
  attr_reader :apt_num, :sq_footage, :num_bedrooms, :num_bathrooms

  def initialize(apt_num:, sq_footage:, num_bedrooms:, num_bathrooms: rent:, num_tenants:)
    @apt_num = apt_num
    @sq_footage = sq_footage
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @rent = rent
    @num_tenants = num_tenants
    @individual_tenants = []
  end









end
