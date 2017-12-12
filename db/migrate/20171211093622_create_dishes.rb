class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :price
      t.references :category, foreign_key: true
      t.references :cuisine, foreign_key: true
      t.references :main_ingredient, foreign_key: true

      t.timestamps
    end
    add_index :dishes, :name, unique: true
  end
end
