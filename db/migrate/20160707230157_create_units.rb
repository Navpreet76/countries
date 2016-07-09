class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :designation
      t.text :weapons_used
      t.integer :strength

      t.timestamps null: false
    end
  end
end
