class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_food
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end
    def age=(new_age)
        @age = new_age
    end

    def bark
        self.age > 3 ? @bark.upcase : @bark
    end
end 