class DishesController < ApplicationController
  def show
    @dish = Dish.find(params[:id])
  end

  def index
    @dishes = Dish.all
  end

  def new
    @ingredients = Ingredient.all
  end

  def create
    @dish = Dish.new(dish_params)

    @dish.save
    redirect_to @dish
  end

  def is_friendly_for_diet(diet)
    result_list = []
    @dish.ingredients.each do |i|
      result_list.append(i['is_#{diet}'])
    end
    result_list.all?
  end

  private
    def dish_params
      params.require(:dish).permit(:title, ingredients: []).tap do |p|
        p[:ingredients].map! {|id| Ingredient.find id.to_i }
      end
    end

end