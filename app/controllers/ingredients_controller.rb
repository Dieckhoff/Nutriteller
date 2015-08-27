class IngredientsController < ApplicationController
  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
  end

  def index
    @ingredients = Ingredient.all
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    redirect_to @ingredient
  end

  private
    def ingredient_params
      permitted_params = [:title].append(Ingredient.available_diets.map {|diet| "is_#{diet}".to_sym })
      params.require(:ingredient).permit(permitted_params)
    end

end
