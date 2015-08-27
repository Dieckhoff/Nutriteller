class Dish < ActiveRecord::Base
  has_and_belongs_to_many :ingredients

  def is_friendly_for?(diet:)
    ingredients.map do |ingredient|
      ingredient.is_friendly_for?(diet: diet)
    end.all?
  end
end
