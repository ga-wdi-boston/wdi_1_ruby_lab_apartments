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
