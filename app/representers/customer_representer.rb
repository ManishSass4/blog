class CustomerRepresenter
  def initialize(customer)
    @customer = customer
  end

  def as_json
    { 
      name: customer_name(customer),
      username: customer.username,
    }
  end

  private
  attr_reader :customer
  def customer_name(customer)
    "#{customer.first_name} #{customer.last_name}"
  end
end