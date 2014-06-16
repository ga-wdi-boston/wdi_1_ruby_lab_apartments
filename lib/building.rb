class Building

  attr_reader :address, :apartments

  def initialize(address:, apartments:)
    @address = address
    @apartments = apartments.freeze
  end

  def add_apartment(an_appt)
    @apartments += [an_appt]
    apartments.freeze
  end

  def remove_apartment(number, override: false)

    appt = apartments.find do |appt|
      appt.number == number
    end

    raise("Apartment #{number} does not exist.") if appt.nil?
    raise("Apartment #{number} currently has tenants.") unless appt.tenants.empty? || override

    @apartments = apartments.reject{ |appt| appt.number == number }

    apartments.freeze
  end

  def square_footage
    apartments.map(&:sq_footage).reduce(0, &:+)
  end


  def revenue
    apartments.map(&:rent).reduce(0, &:+)
  end

  def tenants
    apartments.map(&:tenants).flatten
  end

  def group_appts_credit_rating
    groups = apartments.group_by { |appt| appt.average_credit_rating }
    groups.each_value do |appts|
      appts.sort_by(&:average_credit_score)
    end
  end

end
