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

end
