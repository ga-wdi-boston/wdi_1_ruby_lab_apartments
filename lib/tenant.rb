require 'pry'

class Tenant

  attr_reader :first_name, :age, :credit_score
  attr_accessor :last_name

  def initialize(first_name:, last_name:, age:, credit_score:)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @credit_score = credit_score
  end

  def create_credit_rating(credit_score:) #returns the string in credit_rating
    case credit_score
      when credit_score >= 760
        credit_rating = 'Excellent'
      when credit_score >= 725
        credit_rating = 'Great'
      when credit_score >= 660
        credit_rating = 'Good'
      when credit_score >= 560
        credit_rating = 'Mediocre'
      else #NEEDS else rather than ending in while bc then the else defaults to nil
        credit_rating = 'Bad'
    end
  end

end
