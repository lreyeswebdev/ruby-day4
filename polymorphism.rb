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
class Cat  
    def meow  
      'Meow!'  
    end  
    
    def chase  
      'chases mouse'  
    end  
  end  
    
  class Dog  
    def bark  
      'Woof!'  
    end  
    def chase  
      'chases cat'  
    end  
  end  
    
  class CatSound  
    def meow  
      sound  
  end  
    
    def sound  
      'Meow!'  
    end  
  end  
    
  def make_it_meow(cat)  
    cat.meow  
  end  
  puts make_it_meow(Cat.new)  
  puts make_it_meow(CatSound.new)  
    
  def make_it_chase(cat)  
    cat.chase  
  end  
  puts make_it_chase(Cat.new)  
  puts make_it_chase(Dog.new)