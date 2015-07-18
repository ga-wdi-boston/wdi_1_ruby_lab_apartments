# Represents an apartment tenant
class Tenant
  CREDIT_RATINGS = {
    760 => 'excellent', 725 => 'great', 660 => 'good', 560 => 'mediocre', 0 => 'bad'
  }

  attr_accessor :name, :age, :credit_score

  # Creates a new Tenant with the given name, age and credit score
  def initialize(name, age, credit_score)
    @name, @age, @credit_score = name, age, credit_score
  end

  # Returns this tenant's credit rating
  def credit_rating
    CREDIT_RATINGS.each { |k,v| return v if @credit_score >= k }
  end

end
