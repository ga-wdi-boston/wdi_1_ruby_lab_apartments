class Tenant
  attr_reader :name, :age, :credit_score

  def initialize(name:, age:, credit_score:)
    @name, @age, @credit_score = name, age, credit_score
  end

  def credit_rating
    case
    when credit_score >= 760 then "excellent"
    when credit_score >= 725 then "great"
    when credit_score >= 660 then "good"
    when credit_score >= 560 then "mediocre"
    else
      "bad"
    end
  end

end
