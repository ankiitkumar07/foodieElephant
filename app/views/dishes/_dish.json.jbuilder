json.extract! dish, :id, :name, :price, :category, :cuisine, :main_ingredient, :created_at, :updated_at
json.url dish_url(dish, format: :json)
