class AddAppointToFeedback < ActiveRecord::Migration[7.0]
  def change
    add_reference :feedbacks, :appoint, null: false, foreign_key: true
  end
end
