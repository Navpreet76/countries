class CreateNavyVessels < ActiveRecord::Migration
  def change
    create_table :navy_vessels do |t|
      t.string :name
      t.string :designation
      t.integer :strength

      t.timestamps null: false
    end
  end
end
