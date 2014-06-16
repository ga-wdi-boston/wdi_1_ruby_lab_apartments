class Building
  attr_accessor :apartments

  def initialize(address:)
    @address = address
    @apartments = []
  end

  def new_apartment(apartment)
    apartments.push(apartment)
  end

  def remove_apartment(apartment_number: 0)
    @appartments.reject! { |appartment| appartment.number == apartment_number }
  end
end
