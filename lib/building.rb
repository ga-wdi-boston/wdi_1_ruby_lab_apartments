class Building

  attr_reader :address, :apartments

  def initialize(address:, apartments:)
    @address = address
    @apartments = apartments.freeze
  end

  def add_apartment(an_appt)
    @apartments += [an_appt]
  end

  def remove_apartment(number)
    exists = false
    has_tenants = false
    @apartments = @apartments.reject do |appt|
      last_exist = (appt.number == number) && last_has_ten = (appt.tenants.count == 0)
      exists = last_exist unless exists
      has_tenants = last_has_ten unless  has_tenants
      appt.number == number && appt.tenants.count == 0
      end
    end

    raise("Apartment #{number} does not exist.") unless exists
    raise("Apartment #{number} currently has tenants.") if exists && !has_tenants


  end


end
