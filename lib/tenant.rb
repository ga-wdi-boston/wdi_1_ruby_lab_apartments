class Tenant

  attr_reader :name
  attr_accessor :age, :credit_score

  def initialize(name, age, credit_score)
    @name, @age, @credit_score = name, age, credit_score
  end

  def credit_rating
    case credit_score
    when credit_score > 760
      :excellent
    when credit_score > 725
      :great
    when credit_score > 660
      :good
    when credit_score > 560
      :mediocre
    else
      :bad
    end
  end

end
