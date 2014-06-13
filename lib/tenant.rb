class Tenant

  attr_accessor :name,:age,:credit_score

  def initialize (name,age,credit_score)
    @name,@age,@credit_score = name,age,credit_score
  end

  def credit_check
    if credit_score >= 760
      'excellent'
    elsif credit_score >= 725
      'great'
    elsif credit_score >= 660
      'good'
    elsif credit_score >= 560
      'medicore'
    else
      'bad'
    end
  end

end
