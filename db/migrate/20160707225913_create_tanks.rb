class CreateTanks < ActiveRecord::Migration
  def change
    create_table :tanks do |t|
      t.string :name
      t.text :description
      t.string :designation
      t.integer :numbers_built

      t.timestamps null: false
    end
  end
end
