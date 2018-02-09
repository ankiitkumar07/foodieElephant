class AddImageToDish < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :image_path, :string, null: false, default: "https://dl.dropboxusercontent.com/s/t7c2qotnnlkgwz5/dish.jpg?dl=0"
  end
end
