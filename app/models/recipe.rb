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
    result = ""
    hours = prep_time / 60
    if hours > 0
      result += "#{hours} hours and"
    end
    minutes = prep_time % 60
    if minutes > 0
      result += "#{minutes} minutes"
    end    
    result
  end
end
