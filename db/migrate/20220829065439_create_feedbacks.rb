class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      #t.integer :customer_id
      #t.integer :counsellor_id
      t.datetime :date
      t.datetime :time

      t.timestamps
    end
  end
end