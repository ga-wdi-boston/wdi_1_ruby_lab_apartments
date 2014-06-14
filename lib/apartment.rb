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

  # Returns an array of tenants in this apartment. Subsequent modifications
  # to the array will not affect the apartment set of tenants.
  def tenants
    result = []
    @tenants.each { |e| result << e }
    result
  end

  # Adds the given tenant to this apartment. Raises an error if the tenanant
  # has a credit rating of 'bad' or if there ould be too many tenants.
  # Returns self if the given tenant was successfully added, nil otherwise.
  def add_tenant(t)
    raise 'Bad credit rating' if t.credit_rating == 'bad'
    raise 'Too many tenants' if (@tenants.size + 1) > @num_bedrooms
    @tenants.add?(t)
  end

  # Evicts the given tenant. The given value may be the tenant name or the
  # Tenant object representing the tenant. Returns true on success. An error
  # is raised if the tenant does not exist.
  def evict_tenant(o)
    success = @tenants.reject! { |e| e == o || e.name == o }
    raise 'Tenant not found' if !success
    true
  end

  # Evicts all the tenants from this apartment.
  def evict_all
    @tenants.clear
  end

  # Returns the average credit score of the apartment tenants, or -1 if the
  # apartment is unoccupied.
  def credit_score
    return -1 if @tenants.empty?
    @tenants.map {|e| e.credit_score }.reduce(0, &:+) / @tenants.size
  end

  # Returns the average credit rating of the apartment tenants,
  # or 'unknown' if the apartment is unoccupied.
  def credit_rating
    score = credit_score
    return "unknown" if score == -1
    Tenant::CREDIT_RATINGS.each { |k,v| return v if score >= k }
  end

end
