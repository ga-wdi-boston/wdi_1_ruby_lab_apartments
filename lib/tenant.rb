class Tenant

  attr_accessor :credit_score

  def initialize(name:, age:, credit_score: 0)
    @name, @age, @credit_score = name, age, credit_score
  end

  def credit_rating
    if credit_score >= 760
      credit_rating = 'excellent'
    elsif (725..759).member?(credit_score)
      credit_rating = 'great'
    elsif (660..724).member?(credit_score)
      credit_rating = 'good'
    elsif (560..659).member?(credit_score)
      credit_rating = 'mediocre'
    else
      credit_rating = 'bad'
    end
  end

end
