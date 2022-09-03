class AddBodyToFeedback < ActiveRecord::Migration[7.0]
  def change
    add_column :feedbacks, :body, :string

  end
end
