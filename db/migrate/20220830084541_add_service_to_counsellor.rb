class AddServiceToCounsellor < ActiveRecord::Migration[7.0]
  def change
    add_column :counsellors, :service, :string
  end
end
