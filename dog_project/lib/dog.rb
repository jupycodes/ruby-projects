class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    #getter methods
    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end
    #setter method
    def age=(num)
        @age=num
    end

    def bark
        if @age > 3
            @bark.upcase
        else
            @bark.downcase
        end
    end

    def favorite_foods
        @favorite_foods
    end

    def favorite_food?(food)   
    @favorite_foods.map(&:downcase).include?(food.downcase)
    end
end

# d1 = Dog.new("Jupy", "minpin", 5, "boof", ["chikin", "treats", "snacc"])
# puts d1.favorite_food?("SNACC")
# # d2 = Dog.new("Fido", "German Shepard", 3, "Bork!", ["Bacon", "Chicken"])
# # p d2.bark

