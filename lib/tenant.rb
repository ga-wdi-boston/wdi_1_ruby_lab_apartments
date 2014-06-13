### `Tenant`
# * has a name, age, and credit score
# * has a credit rating, calculated from the credit score as follows:
#   * 760 or higher is "excellent"
#   * 725 or higher is "great"
#   * 660 or higher is "good"
#   * 560 or higher is "mediocre"
#   * anything lower is "bad"

class Tenant
  attr_reader :name, :age, :credit_score
  def initialize(name:, age:, credit_score:)
    @name = name, @age = age, @credit_score = credit_score
  end

  def credit_score_rating
    if credit_score >= 760
      @credit_score_rating = 'excellent'
    elsif credit_score >= 725
      @credit_score_rating = 'great'
    elsif credit_score >= 660
      @credit_score_rating = 'good'
    elsif credit_score >=560
      @credit_score_rating ='mediocre'
    else @credit_score_rating = 'bad'
    end
    @credit_score_rating
  end

end
