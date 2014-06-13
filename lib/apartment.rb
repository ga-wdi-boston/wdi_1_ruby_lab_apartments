require 'set'
require_relative 'tenant'

# Represents an apartment
class Apartment
  attr_reader :number, :area, :num_bedrooms, :num_bathrooms
  attr_accessor :rent

  # Creates an apartment with the given apartment number, monthly rent,
  # square footage, number of bedrooms and number of bathrooms.
  def initialize(number:, rent:, area:, num_bedrooms:, num_bathrooms:)
    @number, @rent, @area, @num_bedrooms, @num_bathrooms = number, rent, area, num_bedrooms, num_bathrooms
    @tenants = Set.new
  end

  # Returns an array of tenants in this apartment.
  def tenants
    result = []
    @tenants.each { |e| result << e }
    result
  end

  # Adds the given tenant to this apartment. Raises an error if the tenanant
  # has a credit rating of 'bad' or if there ould be too many tenants.
  def add_tenant(t)
    if t.credit_rating == 'bad'
      raise 'Bad credit rating'
    end
    if (@tenants.size + 1) > @num_bedrooms
      raise 'Too many tenants'
    end
    @tenants.add(t)
  end

  # Evicts the given tenant. The given value may be the tenant name or the
  # Tenant object representing the tenant.
  def evict_tenant(o)
    success = @tenants.reject! { |e| e == o || e.name == o }
    if success == nil
      raise 'Tenant not found'
    end
  end

  # Evicts all the tenants from this apartment.
  def evict_all
    @tenants.clear
  end

  #Returns the average credit score.
  def credit_score
    @tenants.map {|e| e.credit_score }.reduce(0, &:+) / @tenants.size
  end

  # Returns the avergae credit rating of the apartment tenants.
  def credit_rating
    Tenant::CREDIT_RATINGS.each { |k,v| return v if credit_score >= k }
  end

end

