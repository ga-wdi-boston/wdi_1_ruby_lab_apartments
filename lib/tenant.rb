class Tenant
  CREDIT_RATINGS = {760 => 'excellent', 725 => 'great', 660 => 'good', 560 => 'mediocre', 0 => 'bad'}

  attr_reader :name, :age, :credit_score

  def initialize(name:, age:, credit_score:)
    @name, @age, @credit_score = name, age, credit_score
  end

  def credit_rating
    CREDIT_RATINGS.each { |credit, rating| return rating if credit_score >= credit }
  end

end
