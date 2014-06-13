class Building
  attr_reader :apartments

  def initialize(address:)
    @address = address
    @apartments = []
  end

  def new_apartment
    @apartments << Apartment.new
  end
end
