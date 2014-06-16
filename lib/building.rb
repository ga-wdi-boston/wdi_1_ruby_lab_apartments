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

  def calculate_square_footage
    apartments.map { |apartment| apartment.square_footage }.reduce(0, &:+)
  end

  def calculate_total_revenue
    apartments.map { |apartment| apartment.rent }.reduce(0, &:+)
  end
end
