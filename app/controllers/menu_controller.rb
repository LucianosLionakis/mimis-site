class MenuController < ApplicationController
  def index
    @starter = Meal.where(:mealtype => 0)
    @next = Meal.where(:mealtype => 1)
    @main = Meal.where(:mealtype => 2)
    @mainfish = Meal.where(:mealtype => 3)
  end
end
