class AddSlugToCuisine < ActiveRecord::Migration[5.0]
  def change
    add_column :cuisines, :slug, :string
  end
end
