class Api::V1::DishSerializer < Api::V1::BaseSerializer
  attributes :id, :title, :ingredients, :created_at, :updated_at

  # has_and_belongs_to_many :ingredients

  def created_at
    object.created_at.in_time_zone.iso8601 if object.created_at
  end

  def updated_at
    object.updated_at.in_time_zone.iso8601 if object.created_at
  end
end