class Apartment
  attr_accessor :number, :rent, :square_ft, :beds, :baths
  attr_reader :tenants

  def initialize(number:, rent:, square_ft:, beds:, baths:)
    @number, @rent, @square_ft, @beds, @baths, @tenants = number, rent, square_ft, beds, baths, []
  end

end
