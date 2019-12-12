require 'pry'

class School
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end  

# if key exists, add new students.  
# if key doesn't exist, create key and point it to an empty array. 
# however, if grade exists, erase its current contents by creating a key 
#   and setting it equal to an empty array. 

    def add_student(name, grade)
    # hash[:grade] = [name1, name2, name3] => {9 => ["Zach Morris"]}
      if 
        @roster.include? grade
        @roster[grade] << name
      else 
        @roster[grade] = []
        @roster[grade] << name
      end 
      @roster
    end 

    def grade(grade)
        @roster[grade]
    end

    def sort
        # iterate through HoA @roster key/value pair and sorting values alphabetically
        # hash = {}
        @roster.map {|key, value| 
            # hash[key] = value.sort
            [key, value.sort] }.to_h
        # hash 

    end 

end

# school = School.new("Bayside High School")
# school.add_student("AC Slater", 9)
# school.add_student("Kelly Kapowski", 10)
# school.add_student("Screech", 11)
# school.roster
