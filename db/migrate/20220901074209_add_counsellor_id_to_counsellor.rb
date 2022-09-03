class AddCounsellorIdToCounsellor < ActiveRecord::Migration[7.0]
  def change
    add_column :counsellors, :counsellor_id, :integer
  end
end
