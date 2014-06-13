class Tenant

  attr_accessor :name, :age, :credit_score

  def initialize(name:, age:, credit_score:)
    @name, @age, @credit_score = name, age, credit_score
  end

  def credit_rating
    case credit_score
    when (760..100000)
      "excellent"
    when (725..759)
      "great"
    when (660..724)
      "good"
    when (560..659)
      "mediocre"
    else
      "bad"
    end

  end

end
