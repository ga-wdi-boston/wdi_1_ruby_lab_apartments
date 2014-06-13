require_relative 'credit_ratings'

class Tenant

  attr_accessor :name, :age, :credit_score

  # Tenant has a name, age, and credit score
  def initialize(name:, age:, credit_score:)
    @name, @age, @credit_score = name, age, credit_score
  end

  include Credit_Ratings

  # has a credit rating
  def credit_rating
    Credit_Ratings.credit_chart(credit_score)
  end

end
