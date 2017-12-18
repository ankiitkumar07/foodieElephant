class MainIngredient < ApplicationRecord
	has_many :dishes
	extend FriendlyId
  	friendly_id :name, use: :slugged
end
