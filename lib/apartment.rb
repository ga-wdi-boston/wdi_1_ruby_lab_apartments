class Apartment

  attr_accessor :number, :rent, :square_footage, :bedroom, :bathroom

  def initialize(number,rent,square_footage,bedroom,bathroom)
    @number,@rent,@square_footage = number,rent,square_footage
    @bedroom,@bathroom = bedroom,bathroom
    @tenants = []
  end



end

