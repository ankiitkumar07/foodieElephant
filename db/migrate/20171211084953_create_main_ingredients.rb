class CreateMainIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :main_ingredients do |t|
    	t.string :name, null: false, default: ""
      t.timestamps
    end
    add_index :main_ingredients, :name, unique: true
  end
end
