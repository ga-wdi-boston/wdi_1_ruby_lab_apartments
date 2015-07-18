require_relative 'tenant'

class Apartment

  attr_reader :number, :rent, :sq_footage, :num_of_bedrooms, :num_of_bathrooms, :tenants

  def initialize(number: number,
                 rent: rent,
                 sq_footage: sq_footage,
                 num_of_bedrooms: num_of_bedrooms,
                 num_of_bathrooms: num_of_bathrooms,
                 tenants: tenants)

    @number, @rent, @sq_footage, @num_of_bedrooms, @num_of_bathrooms, @tenants =
      number, rent, sq_footage, num_of_bedrooms, num_of_bathrooms, tenants.freeze
  end

  def add_tenant(a_tenant)

    if(a_tenant.credit_rating == :bad)
      raise("I can't add #{a_tenant.name} because of his/her credit rating.")

    elsif tenants.count == num_of_bedrooms
      raise("I can't add #{a_tenant.name} because there is not enough room.")

    else
      @tenants += [a_tenant]
      @tenants.freeze
    end

  end

  def remove_tenant(name: nil, id: nil, a_tenant: nil)
    deleted = false
    @tenants = @tenants.reject do |tenant|
      last_eval = (tenant == a_tenant || tenant.object_id == id || tenant.name == name)
      deleted = last_eval unless deleted
      tenant == a_tenant || tenant.object_id == id || tenant.name == name
    end
    tenants.freeze

    crit = name unless name.nil?
    crit = id unless id.nil?
    crit = a_tenant.name unless a_tenant.nil?

    raise("Could not find #{crit} in apartment #{number}") unless deleted
  end

  def remove_all_tenants
    @tenants = [].freeze
  end

  def average_credit_rating
    sum = tenants.map(&:credit_score).reduce(0, &:+)
    Tenant::credit_rating_from_score(sum / (tenants.count))
  end

  def average_credit_score
    sum = tenants.map(&:credit_score).reduce(0, &:+)
    sum / (tenants.count)
  end

end
