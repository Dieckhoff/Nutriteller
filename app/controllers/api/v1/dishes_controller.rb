class Api::V1::DishesController < Api::V1::BaseController
  def show
    dish = Dish.find(params[:id])

    render(json: Api::V1::DishSerializer.new(dish).to_json)
  end

  def index
    dishes = Dish.all

    render(
      json: ActiveModel::ArraySerializer.new(
        dishes,
        each_serializer: Api::V1::DishSerializer,
        root: 'dishes',
      )
    )
  end
end