class AddCustomerToAppoint < ActiveRecord::Migration[7.0]
  def change
    add_reference :appoints, :customer, foreign_key: true
  end
end
