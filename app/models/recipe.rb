class Recipe
  attr_accessor :title, :chef, :prep_time, :ingredients, :directions

  def initialize(options)
    @title = options[:title]
    @chef = options[:chef]
    @prep_time = options[:prep_time]
    @ingredients = options[:ingredients]
    @directions = options[:directions]
  end
end

