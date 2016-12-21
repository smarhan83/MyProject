class CreateMybudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :mybudgets do |t|
      t.string :budgetname
      t.integer :amount
      t.integer :year

      t.timestamps
    end
  end
end
