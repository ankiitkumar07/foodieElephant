module ApplicationHelper
	def get_vars
	    @cuisines = Cuisine.all
	    @categories = Category.all 
	    @mainIng = MainIngredient.all		
	end
end
