require 'pry'
require 'pry'
class School
    def initialize(schoolname)
        @schoolname = schoolname
        @roster = {}
    end
    attr_reader :schoolname
    attr_accessor :roster

    def add_student(name, grade)
        roster
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade].push(name)
        # binding.pry
    end

    def grade(gradenum)
        @roster[gradenum]
    end

    def sort 
        sorted = @roster.sort_by do |grade, name|
            grade
        end.to_h
        sorted.each_pair do |grade, name|
            name.sort!
        end

    end

end
