class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many :dishes

  def is_friendly_for?(diet:)
    unless self.class.available_diets.include?(diet)
      raise StandardError.new "#{diet} is unknown"
    end
    send("is_#{diet}")
  end

  class << self
    def available_diets
      [:vegetarian, :vegan, :gluten_free, :lactose_free]
    end

  end

end
