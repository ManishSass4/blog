class CustomersRepresenter
  def initialize(customers)
  	@customers = customers
  end
  
  def as_json
	  customers.map do |customer|
	    {
	    	name: customer_name(customer),
	    	username: customer.username,
	    }
    end
  end

  private
	attr_reader :customers
	def customer_name(customer)
	  "#{customer.first_name} #{customer.last_name}"
	end
end