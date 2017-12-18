class AddSlugToMainIngredient < ActiveRecord::Migration[5.0]
  def change
    add_column :main_ingredients, :slug, :string
  end
end
