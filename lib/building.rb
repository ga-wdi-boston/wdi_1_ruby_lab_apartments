class Building
  attr_reader :address, :apartments

  def initialize(address:)
    @address = address
    @apartments = []
  end

  def add_apartment(apartment)
    apartments.push(apartment)
  end

  def remove_apartment(number)
    apartment = apartments.find { |apartment| apartment.number == number}
    if !apartment.nil? && !apartment.tenants.any?
      apartments.delete(apartment)
    else
      raise "That apartment does not exist in the building."
    end
  end

  def total_square_footage
    apartments.map(&:square_footage).reduce(0,:+)
  end

  def monthly_revenue
    apartments.map(&:rent).reduce(0,:+)
  end

  def list_of_tenants
    single_list = []
    apartments.map(&:tenants).each do |apt_tenants|
      apt_tenants.each {|tenant| single_list << tenant }
    end
    single_list
  end

end
