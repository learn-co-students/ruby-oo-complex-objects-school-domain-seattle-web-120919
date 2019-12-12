require "pry"
# code here!
class School


    attr_reader :roster


    def initialize(name)
        @name = name
        @roster = {} 
    end

    def add_student(name, grade)
        @name = name
        @grade = grade 
        if 
            @roster.include?(grade) == false
            # addes a student if roster does not include 
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
        # binding.pry
    end

    def sort
        # @roster {|k,v| [k,v.sort]}.sort.to_h
        # @array[h.map{|a,b| [a,[b.sort]]}.sort]
        # hash.sort_by(&:first).map { |k, v| [k, v.sort]}.to_h
        @roster.map { |k, v| [k, v.sort]}.to_h
        #this syntax is using the .map enumerator
        #then we can use bracket parameters to sort out key and values.
        #finally changing them to hash.
        # @roster[h.map{|a,b| [a,[b.sort]]}.sort]
    end

end

