#inheritance
class Student 
    def initialize(first, last, course)
        @first_name = first
        @last_name = last
        @course = course
    end

    def greeting
        puts "Hello classmates. My name is #{@first_name} #{@last_name}. My course is #{@course}."
    end
end

class Science < Student
    def greeting
        puts "Hello classmates. My name is #{@first_name} #{@last_name}. My course in the College of Science is #{@course}."
    end
end

class Engineering < Student
    def greeting
        puts "Hello classmates. My name is #{@first_name} #{@last_name}. My course in the College of Engineering is #{@course}."
    end
end

jane = Student.new("Jane", "Doe", "Law")
jane.greeting
mike = Science.new("Mike", "Miller", "Biology")
mike.greeting
anna = Engineering.new("Anna", "Jones", "Industrial Engineering")
anna.greeting

#duck-typing
class AnimalActions
  def sound(animal)
    animal.sound
  end

  def chase(animal)
    animal.chase
  end
end

class Cat  
    def sound  
      puts 'Meow!'  
    end  
    
    def chase  
      puts 'chases mouse'  
    end  
end  
    
class Dog  
    def sound  
      puts 'Woof!'  
    end  
    def chase  
      put 'chases cat'  
    end  
end  
    
muning = AnimalActions.new
cat = Cat.new
muning.sound(cat)
muning.chase(cat)

bantay = AnimalActions.new
dog = Dog.new
bantay.sound(dog)
muning.chase(dog)
