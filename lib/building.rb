class Building

  attr_reader :apartments
  attr_accessor :address

  def initialize(address:)
    # has an address
    @address = address

    # has many apartments
    @apartments = []
  end

  # has method to add apartment
  def add_apt(apartment)
    apartments.push(apartment)
  end

  # has method to remove specific apartment by number
  # which returns error if there is no such apartment OR if apt has tenants

  def remove_apt(number)
    if !apartments.map{ |apt| apt.number }.include?(number)
      raise "Apartment not found."

    else
      apartments.select{ |apt| apt.number == number }.each do |apt|
        if apt.tenants.length == 0
          apartments.delete(apt)
        else
          raise "Apartment Occupied!"
        end
      end

    end
  end

  # has total square-footage
  def sq_ft
    apartments.map { |apt| apt.sq_ft }.reduce(0, &:+)
  end

  # has total monthly revenue
  def revenue
    apartments.map { |apt| apt.rent }.reduce(0, &:+)
  end

  # has list of tenants

  # has method to retrieve all apts grouped by credit rating

end
