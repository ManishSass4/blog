class AddStarttimeToAppoint < ActiveRecord::Migration[7.0]
  def change
    add_column :appoints, :starttime, :datetime
  end
end
