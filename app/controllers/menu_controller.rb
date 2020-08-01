class MenuController < ApplicationController
  def index
    @all_meals = [
      [  "starter", Meal.where(:mealtype => 0) ],
      [     "next", Meal.where(:mealtype => 1) ],
      [     "main", Meal.where(:mealtype => 2) ],
      [ "mainfish", Meal.where(:mealtype => 3) ]
    ]

    @all_wines = [
      [   "white", Wine.where(:winetype => 0) ],
      [    "rose", Wine.where(:winetype => 1) ],
      [     "red", Wine.where(:winetype => 2) ],
      [ "retsina", Wine.where(:winetype => 3) ]
    ]

    @all_drinks = [
      [ "apperitief", Drink.where(:drinktype => 0) ],
      [ "soft_drink", Drink.where(:drinktype => 1) ],
      [       "beer", Drink.where(:drinktype => 2) ],
      [ "warm_drink", Drink.where(:drinktype => 3) ]
    ]
  end
end
