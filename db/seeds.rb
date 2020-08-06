# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def generate_meals()
    puts "Generating Meals"
    # puts "Generating Staters"
    ### Starters ###
    starter = 0
    Meal.create_meals(
        ["tzatziki", "melitzanosalata", "rode_biet_sla",    "tarama"],
        [     [5.0],             [5.0],           [5.0], [8.0, 15.0]],
        [      true,              true,            true,       false],
        [      false,             false,          true,       false],
        starter
    )

    # puts "Generating Nexts"
    ### Next ###
    sequel = 1
    Meal.create_meals(
        ["pastourma", "grote_bonen", "okra", "fava", "dakos", "spinagepie", "fava_with_lakerda", "salade"],
        [        [8],           [9],    [9],    [9],    [14],         [14],                [14],     [16]],
        [      false,          true,   true,   true,    true,         true,               false,    false],
        [      false,          true,   true,   true,    false,         false,               false,    false],
        sequel
    )

    # puts "Generating Mains"
    ### Main ###
    main_course = 2
    Meal.create_meals(
        ["kipfilet_trigonela", "filled_aubergine", "imam_baildi", "lam_with_spinage"],
        [                [17],               [19],          [19],               [19]],
        [               false,              false,          true,              false],
        [               false,              false,          false,              false],
        main_course
    )

    # puts "Generating Fish Mains"
    ### Main fish ###
    main_course_fish = 3
    Meal.create_meals(
        ["baby_squid", "octapus", "sepia", "dorade"],
        [        [19],      [19],    [21],     [21]],
        [       false,     false,   false,    false],
        [       false,     false,   false,    false],
        main_course_fish
    )
    puts "Done Generating Meals"
end

def generate_wines()
    puts "Generating Wines"

    # White wines
    white = 0
    Wine.create_wines(
        ["8_art_vidiano", "dafni", "asirtiko", "symphonia"],
        [25, 28, 28, 30],
        white
    )

    # Rose wines
    rose = 1
    Wine.create_wines(
        ["psithiros"],
        [25],
        rose
    )

    # Red wines
    red = 2
    Wine.create_wines(
        ["kotsifali", "silva_psithiros", "dafnios_liatiki"],
        [25, 30, 30],
        red
    )
    
    # Retsina wines
    retsina = 3
    Wine.create_wines(
        ["kechribari_bottle_500ml", "savatiano"],
        [10, 12],
        retsina
    )
    puts "Done Generating Wines"
end


def generate_drinks()
    puts "Generating Drinks"

    # Apperitief
    apperitief = 0
    Drink.create_drinks(
        ["ouzo_38", "ouzo_40", "ouzo_42", "campari", "white_martini", "red_martini", "porto", "tentura", "muscat", "mastixa", "cava", "gin_gordon", "gin_hendricks", "vodka", "jack_daniels", "johnny_walker", "courvoisier", "metaxa"],
        [        5,         6,         7,         5,               5,             5,       5,         5,        5,         5,      5,            5,              10,        5,             7,               6,             6,        5],
        apperitief
    )

    # Soft drinks
    soft_drink = 1
    Drink.create_drinks(
        ["spa_sparkling", "spa_flat", "coca_cola", "coca_cola_light", "coca_cola_zero", "fanta", "ice_tea", "nordic_tonic", "looza_orange", "looza_grapefruit", "chaudefontaine_1l_sparkling", "chaudefontaine_1l_flat"],
        [2.5, 2.5, 2.5, 2.5, 2.5, 2.5, 2.5, 2.5, 2.5, 2.5, 6, 6],
        soft_drink
    )

    # Beer wines
    beer = 2
    Drink.create_drinks(
        ["jupiler", "duvel", "trapist_tripel", "mythos", "nissos"],
        [2.5, 3.5, 3.5, 3, 4],
        beer
    )
    
    # Warm drinks
    warm_drinks = 3
    Drink.create_drinks(
        ["espresso", "koffie", "deca", "koffie_tentura", "irish_koffie_metaxa", "frappe", "fresh_mint_thee", "fresh_ginger_thee", "cretan_mountain_thee", "green_thee"],
        [2.5, 2.5, 2.5, 8, 8, 3, 3, 3, 3, 2.5],
        warm_drinks
    )
    puts "Done Generating Drinks"
end

generate_meals()

generate_wines()

generate_drinks()