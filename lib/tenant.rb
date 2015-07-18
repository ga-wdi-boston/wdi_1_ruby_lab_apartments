class Tenant

  attr_reader :name
  attr_accessor :age, :credit_score

  def initialize(name, age, credit_score)
    @name, @age, @credit_score = name, age, credit_score
  end

  def credit_rating
    Tenant::credit_rating_from_score(credit_score)
  end

  def self.credit_rating_from_score(score)
    case
    when score > 760
      :excellent
    when score > 725
      :great
    when score > 660
      :good
    when score > 560
      :mediocre
    else
      :bad
    end

  end


end
