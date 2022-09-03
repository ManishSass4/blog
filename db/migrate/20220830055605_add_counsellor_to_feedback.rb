class AddCounsellorToFeedback < ActiveRecord::Migration[7.0]
  def change
    add_reference :feedbacks, :counsellor, null: false, foreign_key: true
  end
end
