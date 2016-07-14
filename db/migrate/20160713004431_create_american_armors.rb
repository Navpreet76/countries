class CreateAmericanArmors < ActiveRecord::Migration
  def change
    create_table :american_armors do |t|
      t.string :name
      t.string :designation
      t.integer :numbers_built
      t.text :description
      t.text :content

      t.timestamps null: false
    end
  end
end
