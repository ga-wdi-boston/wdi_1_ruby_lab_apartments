# Jake Austin
# WDI Boston June comprehensive assessment
# Jun 13, 2014

class Tenant
  # assume something else handles age, name and cred don't change
  attr_reader :name, :age, :cred

  def initialize(name:, age:, cred:)
    @name, @age, @cred = name, age, cred
  end
end
