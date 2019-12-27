class School

attr_reader :name, :roster

def initialize(name)
    @name = name #instance variable
    @roster = {}
end 

def add_student(name, grade)
    if @roster.has_key?(grade) 
        @roster[grade] << name 
    else 
        @roster[grade] = [name]
    end 
end 

def grade(grade)
    @roster[grade]
end 

def sort
    @roster.each_value { |v| v.sort! }

    #or can use @roster.each { |k,v| v.sort! }
end 

end 