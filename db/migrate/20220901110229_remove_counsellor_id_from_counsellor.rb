class RemoveCounsellorIdFromCounsellor < ActiveRecord::Migration[7.0]
  def change
    remove_column :counsellors, :counsellor_id, :integer
  end
end
