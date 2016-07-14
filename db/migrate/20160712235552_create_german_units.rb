class CreateGermanUnits < ActiveRecord::Migration
  def change
    create_table :german_units do |t|
      t.string :name
      t.string :designation
      t.text :description
      t.text :content

      t.timestamps null: false
    end
  end
end
