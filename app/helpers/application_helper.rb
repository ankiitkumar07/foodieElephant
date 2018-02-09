module ApplicationHelper
	def get_vars
	    @cuisines = Cuisine.all
	    @categories = Category.all.limit(10) 
	    @mainIng = MainIngredient.all		
	end
end
