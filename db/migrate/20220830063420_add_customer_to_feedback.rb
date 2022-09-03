class AddCustomerToFeedback < ActiveRecord::Migration[7.0]
  def change
    add_reference :feedbacks, :customer, null: false, foreign_key: true
  end
end
