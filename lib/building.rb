class Building
  attr_reader :address, :apartments

  def initialize(address)
    @address = address
    @apartments = []
  end

  def add_apartment(apartment)
    apartments << apartment
  end

  def remove(number)
    #update for error message similar to remove tenant
    if apartments.any? {|apartment| apartment.number == number}
      apartments.delete_if {|apartment| apartment.number == number}
    else
      raise "Cannot find apartment"
    end
  end

  def total_square_ft
  end

  def total_monthly_rev
  end

  def tenant_list
  end



end
