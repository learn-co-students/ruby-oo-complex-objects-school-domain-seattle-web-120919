# code here!
class School

    def initialize(name)
        @name=name
        @roster= {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        @name=name
         @grade=[grade]
        #return self.roster[grade] ? self.roster[grade] <<name: self.roster[grade]
        #trying to make this ternary work so that this whole method can be one line
        #will return to later. current solution passes test but uses enumerable on a hash.
        if
            @roster.include?(grade)==false
            @roster[grade]=[]
        end
        @roster[grade].push(name)
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each_pair do |grade, name|
            @roster[grade]=name.sort
            #@roster.sort_by(&:last)
            #this returns the same error as the line below does.
            #@roster.sort_by { |grade| [name] }
            #trying to make sort_by work, it almost does but it puts grade 9
            #before grade 7, seems to think it is grade -9 for some reason
            #also switches order of Bart and Homers names. Guessing it is 
            #due to them having the same last name.
        end
    
    end


end