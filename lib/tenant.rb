require_relative 'apartment'

class Tenant
  # X  has a name, age, and credit score

  def initialize(name, age, credit_score)
    super (apartment_num)
    @name, @age, @credit_score = name, age, credit_score
  end
  # has a credit rating, calculated from the credit score as follows:


  # 760 or higher is "excellent"
  # 725 or higher is "great"
  # 660 or higher is "good"
  # 560 or higher is "mediocre"
  # anything lower is "bad"
  def credit_rating (x)
    rating = {
    excellent: (x >= 760),
    great: (x >= 725),
    good: (x >= 660),
    mediocre: (x >= 560),
    bad: (x < 560)
  }
  end

end
