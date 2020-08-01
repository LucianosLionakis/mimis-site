# == Schema Information
#
# Table name: users
#
#  id             :integer
#  title          :string(255)
#  mealtype       :integer
#  vegeterian     :boolean
#

class Meal < ApplicationRecord

    enum mealtype: { starter: 0, next: 1, main: 2, main_fish: 3}

    has_many :prices, class_name: "price", foreign_key: "reference_id"

    validates :title, uniqueness: { case_sensitive: false }    
    
    def description
        self.title + "-description"
    end
    
    def vegi?
        self.vegeterian
    end

    def vegan?
        self.vegan
    end

    def price
        prices = Price.where(:meal_id => self.id)
        amount = prices.map { |p| p.amount.round() }
        "€" + amount.join("/")
    end

    def self.create_meals(meals, prices, vegeterian, vegan, type)
        for index in 0..meals.length-1 do
            meal = Meal.create(
                {
                    mealtype: type,
                    title: meals[index],
                    vegeterian: vegeterian[index],
                    vegan: vegan[index]
                })
            for price in prices[index] do
                Price.create({ amount: price, meal_id: meal.id })
            end
        end
    end
end
