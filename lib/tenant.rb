# has a name, age, and credit score
# has a credit rating, calculated from the credit score as follows:
# 760 or higher is "excellent"
# 725 or higher is "great"
# 660 or higher is "good"
# 560 or higher is "mediocre"
# anything lower is "bad"

require 'pry'

class Tenant

  attr_accessor :name, :age, :credit_score

  def initialize(name, age, credit_score)
    @name = name
    @age = age
    @credit_score = credit_score
  end

  def credit_rating
    case credit_score
    when 0..559
      "bad"
    when 560..659
      "mediocre"
    when 660..724
      "good"
    when 725..759
      "great"
    else
      "excellent"
    end

  end

end

binding.pry
