class Drink < ApplicationRecord

    enum drinktype: { apperitief: 0, soft_drink: 1, beer: 2, warm_drink: 3 }

    def description
        self.name + "-description"
    end

    def price!
        "€#{self.price}"
    end
    
    def self.create_drinks(drinks, prices, type)
        for index in 0..drinks.length-1 do
            Drink.create(
                {
                    drinktype: type,
                    name: drinks[index],
                    price: prices[index]
                })
        end
    end

end
