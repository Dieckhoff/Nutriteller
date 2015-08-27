class Api::V1::IngredientSerializer < Api::V1::BaseSerializer
  attributes  *[:id,
              :title,
              Ingredient.available_diets.map {|d| "is_#{d}"},
              :created_at,
              :updated_at].flatten

  def created_at
    object.created_at.in_time_zone.iso8601 if object.created_at
  end

  def updated_at
    object.updated_at.in_time_zone.iso8601 if object.created_at
  end
end