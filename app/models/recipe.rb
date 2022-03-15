class Recipe < ApplicationRecord
  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def friendly_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def prep_time_hours_minutes
    hours = prep_time / 60
    minutes = prep_time % 60
    "#{hours} hours and #{minutes} minutes"
  end
end
