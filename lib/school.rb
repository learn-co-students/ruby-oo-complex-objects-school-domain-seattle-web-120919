require 'pry'

class School
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    attr_reader :school_name
    attr_accessor :roster

    def add_student(student_name, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade].push(student_name)
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value|
            value.sort!
        end
    end
end