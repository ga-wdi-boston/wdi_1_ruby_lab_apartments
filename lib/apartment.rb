class Apartment
  attr_reader :number, :square_footage, :num_bedrooms, :num_bathrooms, :tenants, :tenant_count
  attr_accessor :rent

  def initialize(number:, square_footage:, num_bedrooms:, num_bathrooms:, rent:)
    @number, @square_footage, @num_bedrooms, @num_bathrooms, @rent = number, square_footage, num_bedrooms, num_bathrooms, rent
    @tenant_count = 0
    @tenants = []
  end

  def add_tenant(tenant)
    if tenant.credit_rating == "bad"
      raise "Do not rent to this tenant. They have a bad credit score."
    elsif tenant_count == num_bedrooms
      raise "Do not rent to this tenant. The apartment is full."
    else
      tenants.push(tenant)
    end
  end

  def remove_tenant(tenant)
    if tenant.class == Tenant && tenants.include?(tenant)
      tenants.delete(tenant)
    elsif tenants.map(&:name).include?(tenant)
      tenants.delete_if { |person| person.name == tenant }
    else
      raise "That tenant is not in the apartment."
    end
  end

  def remove_all
    @tenants = []
  end

  def tenant_count
    tenants.length
  end

  def average_credit_score
    (tenants.map(&:credit_score).reduce(0,:+) / tenants.length) if tenants.any?
  end

  def average_credit_rating
    case
    when average_credit_score >= 760 then "excellent"
    when average_credit_score >= 725 then "great"
    when average_credit_score >= 660 then "good"
    when average_credit_score >= 560 then "mediocre"
    else
      "bad"
    end
  end

end
