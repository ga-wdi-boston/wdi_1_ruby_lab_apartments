class Apartment
  attr_reader :bedrooms
  attr_accessor :tenants

  def initialize (number:, rent:, square_footage:, bedrooms: 1, bathrooms: 0)
    @number, @rent, @square_footage, @bedrooms, @bathrooms, @tenants = number, rent, square_footage, bedrooms, bathrooms, []
  end

  def new_tenant(tenant)
    if tenant.credit_rating == 'bad'
      raise "You have bad credit. Crap!"
    elsif tenants.count >= bedrooms
      raise "No room for you!"
    else
      @tenants.push(tenant)
    end
  end

  def remove_all_tenants
    tenants.clear
  end

  def credit_score
     average_credit = tenants.map { |tenant| tenant.credit_score }.reduce(0, &:+) / tenants.count
  end

  def credit_rating
    if credit_score >= 760
      'excellent'
    elsif (725..759).member?(credit_score)
      'great'
    elsif (660..724).member?(credit_score)
       'good'
    elsif (560..659).member?(credit_score)
       'mediocre'
    else
       'bad'
    end
  end

  def remove_a_tenant(removed_tenant)
    if tenants.include?(removed_tenant)
      tenants.delete_if { |tenant| removed_tenant == tenant }
    else
      raise "That tenant does not exist."
    end

  end

end

