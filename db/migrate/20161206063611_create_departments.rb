class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :location
      t.integer :sequence

      t.timestamps
    end
  end
end
