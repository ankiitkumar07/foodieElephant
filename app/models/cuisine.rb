class Cuisine < ApplicationRecord
	has_many :dishes
	extend FriendlyId
  	friendly_id :name, use: :slugged
end
