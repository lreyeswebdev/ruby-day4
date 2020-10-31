#encapsulation exercise
class Age 
    def initialize(current_year, birth_year)
        @current_year = current_year
        @birth_year = birth_year
    end

    def current_age
        @current_year - @birth_year
    end
end

baby = Age.new(2020, 2017)
puts baby.current_age

#abstraction exercise
class Age 
    def initialize(current_year, birth_year)
        @current_year = current_year
        @birth_year = birth_year
    end

    def college_grad_year
        @current_year + years_to_go
    end

    def years_to_go
        21 - current_age
    end

    def current_age
        @current_year - @birth_year
    end
end

baby = Age.new(2020, 2017)
puts baby.college_grad_year