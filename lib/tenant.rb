class Tenant

  attr_reader :name, :age, :credit_score

  def initialize(name:, age:, credit_score:)
    @name, @age, @credit_score = name, age, credit_score
  end

  def credit_rating
    if @credit_score >= 760
      "excellent"
    elsif @credit_score >= 725
      "great"
    elsif @credit_score >= 600
      "good"
    elsif @credit_score >= 560
      "mediocre"
    else
      "bad"
    end
  end

end

=begin
### `Tenant`
has a name, age, and credit score

#B-Instance variables
has a credit rating, calculated from the credit score as follows:
#B-Method that returns string based on credit score variable
760 or higher is "excellent"
725 or higher is "great"
660 or higher is "good"
560 or higher is "mediocre"
anything lower is "bad"
=end
