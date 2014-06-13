class Tenant

  attr_reader :name
  attr_accessor :age, :credit_score

  def initialize(name, age, credit_score)
    @name, @age, @credit_score = name, age, credit_score
  end

  def credit_rating
    case credit_score
    when > 760
      :excellent
    when > 725
      :great
    when > 660
      :good
    when > 560
      :mediocre
    else
      :bad
    end
end
