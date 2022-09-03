class AddCustomerIdToCustomer < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :customer_id, :integer
  end
end
