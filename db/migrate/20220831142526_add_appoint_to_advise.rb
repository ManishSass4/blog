class AddAppointToAdvise < ActiveRecord::Migration[7.0]
  def change
    add_reference :advises, :appoint, null: false, foreign_key: true
  end
end
