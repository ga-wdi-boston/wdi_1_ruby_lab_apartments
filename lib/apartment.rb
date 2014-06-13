# ### `Apartment`
# * has a number, rent, square footage, number of bedrooms, and number of bathrooms
# * has many tenants
# * the list of tenants should not be modified directly (bonus: actually prevent it from being modified directly)
# * has a method to add a tenant that raises an error if the tenant has a "bad" credit rating, or if the new tenant count would go over the number of bedrooms
# * has a method to remove a specific tenant either by object reference *or* by name (bonus: do this without checking classes), which raises an error if the tenant is not found
# * has a method that removes all tenants
# * has an average credit score, calculated from all tenants
# * has a credit rating, calculated from the average credit score using the logic below
require_relative 'tenant'

class Apartment
  attr_reader :number, :rent, :sqr_foot, :bedroom_count, :bathroom_count

  def initialize(number:, rent:, sqr_foot:, bedroom_count:, bathroom_count:)
    @number, @rent, @sqr_foot, @bedroom_count, @bathroom_count = number, rent, sqr_foot, bedroom_count, bathroom_count
    @tenants = []
  end

  def add_tenant(tenant:)
    @tenants << tenant if tenant.credit_score_rating != 'bad' && tenants.length <= bedroom_count
  end

  def remove_tenant(tenant:)
    @tenants.delete(tenant)
  end

  def remove_all_tenants
    @tenants =[]
  end

  def avg_credit_score
    total = 0
    tenants.each{|ten| total +=ten.credit_score}
    total / tenants.length
  end

  def credit_rating
    if avg_credit_score >= 760
      credit_score_rating = 'excellent'
    elsif avg_credit_score >= 725
      credit_score_rating = 'great'
    elsif avg_credit_score >= 660
      credit_score_rating = 'good'
    elsif avg_credit_score >=560
      credit_score_rating ='mediocre'
    else credit_score_rating = 'bad'
    end
    credit_score_rating
  end

  #private

  def tenants
    @tenants
  end

end
