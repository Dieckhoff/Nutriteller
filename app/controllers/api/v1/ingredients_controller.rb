class Api::V1::IngredientsController < Api::V1::BaseController
  def show
    ingredient = Ingredient.find(params[:id])

    render(json: Api::V1::IngredientSerializer.new(ingredient).to_json)
  end

  def index
    ingredients = Ingredient.all

    render(
      json: ActiveModel::ArraySerializer.new(
        ingredients,
        each_serializer: Api::V1::IngredientSerializer,
        root: 'ingredients',
      )
    )
  end
end