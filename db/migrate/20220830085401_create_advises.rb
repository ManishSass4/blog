class CreateAdvises < ActiveRecord::Migration[7.0]
  def change
    create_table :advises do |t|
      t.string :body
      t.references :counsellor, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
