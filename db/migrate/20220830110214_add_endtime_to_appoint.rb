class AddEndtimeToAppoint < ActiveRecord::Migration[7.0]
  def change
    add_column :appoints, :endtime, :datetime
  end
end
