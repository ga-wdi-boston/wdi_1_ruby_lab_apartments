class Building
  attr_reader :address, :apartments

  def initialize(address:)
    @address = address
    @apartments = []
  end

  def add_apartment(apartment)
    apartments.push(apartment)
  end

  def remove_apartment(number, has_tenants: false)
    apartment = apartments.find { |apartment| apartment.number == number}
    if apartment.nil?
      raise "That apartment does not exist in the building."
    elsif apartment.tenants.any? != has_tenants
      raise "That aparment has tenants. Please specify has_tenants true to delete anyways."
    else
      apartments.delete(apartment)
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

  def apartments_by_credit_rating
    apartments.group_by(&:credit_rating)
  end
end
