class Building
  # X  has an address
  # X  has many apartments
  # the list of apartments should not be modified directly (bonus: actually prevent it from being modified directly)


  # has a total square footage, calculated from all apartments

  # has a list of tenants, pulled from the tenant lists of all apartments

  attr_reader :address, :num_of_apartments, :total_sq_footage, :total_monthly_revenue, :all_tenants

  def initialize(address, num_of_apartments)
    @address, @num_of_apartments = address, num_of_apartments
    @total_sq_footage = # &:+ sq_footage of all instances of apartment
    @total_monthly_revenue = #&:+ rent
  end
  # has a method to add an apartment

  # has a total monthly revenue, calculated from all apartment rents
  def total_monthly_revenue
    apartments.map(&:rent).reduce(0, :+)
  end

  # has a method to remove a specific apartment by its number, which raises an error if the number is not found or the apartment currently has any tenants (bonus: allow overriding this constraint)

  # has a method to retrieve all apartments grouped by credit rating (bonus: sort the groups by credit score)

  def group_by_credit_score
    apartments.select { |apartment| apartment.avg_credit_score == avg_credit_score }
  end

end
