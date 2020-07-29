# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_meals(meals, prices, vegeterian, vegan, type)
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

### Starters ###
Starter = 0
create_meals(
    ["tzatziki", "melitzanosalata", "rode_biet_sla",    "tarama"],
    [     [5.0],             [5.0],           [5.0], [8.0, 15.0]],
    [      true,              true,            true,       false],
    [      false,             false,          true,       false],
    Starter
)


### Next ###
Next = 1
create_meals(
    ["pastourma", "grote_bonen", "okra", "fava", "dakos", "spinagepie", "fava_with_lakerda", "salade"],
    [        [8],           [9],    [9],    [9],    [14],         [14],                [14],     [16]],
    [      false,          true,   true,   true,    true,         true,               false,    false],
    [      false,          true,   true,   true,    false,         false,               false,    false],
    Next
)

### Main ###
Main = 2
create_meals(
    ["kipfilet_trigonela", "filled_aubergine", "imam_baildi", "lam_with_spinage"],
    [                [17],               [19],          [19],               [19]],
    [               false,              false,          true,              false],
    [               false,              false,          false,              false],
    Main
)

### Main fish ###
Main_fish = 3
create_meals(
    ["baby_squid", "octapus", "sepia", "dorade"],
    [        [19],      [19],    [21],     [21]],
    [       false,     false,   false,    false],
    [       false,     false,   false,    false],
    Main_fish
)