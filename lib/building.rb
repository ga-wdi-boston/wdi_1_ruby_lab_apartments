require 'set'
require_relative 'apartment'

# Represents an apartment building
class Building
  attr_reader :address

  # Creates a new building with the given address.
  def initialize(address)
    @address = address
    @apartments = Set.new
  end

  # Returns a list of apartments in this building. Subsequent modifications
  # to the array will not affect the bilding's set of apartments.
  def apartments
    result = []
    @apartments.each { |e| result << e }
    result
  end

  # Adds the given apartment to the building set, or nil if the apartment
  # already exists.
  def add_apartment(a)
    @apartments.add?(a)
  end

  # Removes the apartment identified by the given number from the building set.
  # The method will raise an error if the apartment does not exist or if
  # there are current tenants, unless the given eviction test is set to true.
  def remove_apartment(apt_number, evict = false)
    success = @apartments.reject! { |e|  e.number == apt_number && (e.tenants.empty? || evict == true) }
    raise 'Apartment not found or has current tenants' if !success
    true
  end

  # Returns the total square footage of rental space in the building.
  def total_area
    @apartments.map {|e| e.area }.reduce(0, &:+)
  end

  # Returns the monthly revenue of this building.
  def monthly_revenue
    @apartments.map {|e| e.rent }.reduce(0, &:+)
  end

  # Returns an array of all current tenants in the building.
  def tenants
    result = []
    @apartments.each { |e| result << e.tenants }
    result.flatten
  end

  # Returns a hash of apartments grouped by the average credit rating of
  # their tenants.
  def group_apartments
    @apartments.group_by { |e| e.credit_rating }
  end
end
