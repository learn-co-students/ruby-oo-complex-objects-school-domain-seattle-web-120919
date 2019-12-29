require "pry"
class School

    attr_accessor :roster

    def initialize(roster)
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(student_grade)
        @roster[student_grade]
    end

    def sort
        @roster.map {|k,v| [k,v.sort]}.to_h
    end

end
