class CreateGermanArmors < ActiveRecord::Migration
  def change
    create_table :german_armors do |t|
      t.string :name
      t.string :designation
      t.integer :numbers_built
      t.text :description

      t.timestamps null: false
    end
  end
end
