class WelcomeController < ApplicationController
  def index
    @dishes = Dish.all
    @ingredients = Ingredient.all
  end
end
