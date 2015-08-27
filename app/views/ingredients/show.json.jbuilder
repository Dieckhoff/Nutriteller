json.extract!(*[
    @ingredient,
    :id,
    :title,
    Ingredient.available_diets.map {|d| "is_#{d}"},
    :created_at,
    :updated_at
  ].flatten)
