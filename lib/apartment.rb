require_relative 'tenant'
require_relative 'credit_ratings'

class Apartment

  attr_accessor :number, :rent, :sq_ft, :beds, :baths
  attr_reader :tenants

  # has a number, rent, squarefootage, number of bedrooms, and number of bathrooms
  def initialize(number:, rent:, sq_ft:, beds:, baths:)
    @number, @rent, @sq_ft, @beds, @baths = number, rent, sq_ft, beds, baths
    # has many tenants
    @tenants = []
  end

  # has a method to add tenants
  def add_tenant(tenant)

    # Possible errors
    if tenant.credit_rating == "bad"
      raise "Tenant error: This tenant has a bad credit rating"
    elsif tenants.length == beds
      raise "Apartment error: This apartment is full."

    else
      tenants << tenant
    end
  end

  # has a method to remove tenants
  def remove_tenant(object: nil, name: nil)

    if object
      if tenants.include?(object)
        tenants.delete(object)
      else
        raise "Person not found"
      end

    elsif name
      if tenants.map { |person| person.name }.include?(name)
        tenants.delete_if do |person|
          person.name == name
        end
      else
        raise "Person not found"
      end

    else
      raise "Provide an argument."
    end

  end

  def evict
    tenants.clear
  end

  # has an average credit score, calculated from all tenants
  def average_credit_score
    if tenants.length > 0
      tenants.map{ |person| person.credit_score }.reduce(0, &:+)/tenants.length
    else
      0
    end
  end

  # has a credit rating, calculated from average credit score
  def credit_rating
    Credit_Ratings.credit_chart(average_credit_score)
  end

end
