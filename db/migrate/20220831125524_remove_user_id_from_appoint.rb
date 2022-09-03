class RemoveUserIdFromAppoint < ActiveRecord::Migration[7.0]
  def change
    remove_column :appoints, :user_id, :integer
  end
end
