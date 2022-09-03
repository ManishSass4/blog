class RemoveCustomerIdFromCustomer < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :customer_id, :integer
  end
end
