class Tenant

  attr_accessor :name,:age,:credit_score

  def initialize (name,age,credit_score)
    @name,@age,@credit_score = name,age,credit_score
  end

  def credit_check

    # using case
    case
    when credit_score >= 760
      'excellent'
    when credit_score >= 725
      'great'
    when credit_score >= 660
      'good'
    when credit_score >= 560
      'medicore'
    when credit_score < 560
      'bad'
    end

  #   # using if statement
  #   if credit_score >= 760
  #     'excellent'
  #   elsif credit_score >= 725
  #     'great'
  #   elsif credit_score >= 660
  #     'good'
  #   elsif credit_score >= 560
  #     'medicore'
  #   else
  #     'bad'
  #   end
  end

end
