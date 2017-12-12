class Dish < ApplicationRecord
  belongs_to :category
  belongs_to :cuisine
  belongs_to :main_ingredient
end
