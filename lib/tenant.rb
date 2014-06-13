class Tenant

  def initialize(name:, age:, credit_score:)
    @name, @age, @credit_score = name, age, credit_score
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
