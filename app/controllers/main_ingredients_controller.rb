class MainIngredientsController < ApplicationController
  before_action :set_main_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /main_ingredients
  # GET /main_ingredients.json
  def index
    @main_ingredients = MainIngredient.all
  end

  # GET /main_ingredients/1
  # GET /main_ingredients/1.json
  def show
  end

  # GET /main_ingredients/new
  def new
    @main_ingredient = MainIngredient.new
  end

  # GET /main_ingredients/1/edit
  def edit
  end

  # POST /main_ingredients
  # POST /main_ingredients.json
  def create
    @main_ingredient = MainIngredient.new(main_ingredient_params)

    respond_to do |format|
      if @main_ingredient.save
        format.html { redirect_to @main_ingredient, notice: 'Main ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @main_ingredient }
      else
        format.html { render :new }
        format.json { render json: @main_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_ingredients/1
  # PATCH/PUT /main_ingredients/1.json
  def update
    respond_to do |format|
      if @main_ingredient.update(main_ingredient_params)
        format.html { redirect_to @main_ingredient, notice: 'Main ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @main_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_ingredients/1
  # DELETE /main_ingredients/1.json
  def destroy
    @main_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to main_ingredients_url, notice: 'Main ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_ingredient
      @main_ingredient = MainIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_ingredient_params
      params.fetch(:main_ingredient, {})
    end
end
