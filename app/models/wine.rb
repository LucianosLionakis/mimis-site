class Wine < ApplicationRecord

    enum winetype: { wit: 0, rose: 1, rood: 2, retsina: 3}


    def description
        self.name + "-description"
    end
    
    def price!
        
        if self.price == self.price.round
            "€#{self.price.round}"
        else
            "€#{self.price}"
        end
    end

    def self.create_wines(wines, prices, type)
        for index in 0..wines.length-1 do
            Wine.create(
                {
                    winetype: type,
                    name: wines[index],
                    price: prices[index]
                })
        end
    end
end
