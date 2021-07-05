require "pry"

class School
  attr_reader :roster
  attr_accessor :student

  def initialize(roster)
    @roster = {}
  end

  # how do we add multiple students to a class grade
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
    # binding.pry
  end

  def grade(year)
    @roster[year]
    # binding.pry
  end

  def sort
    @roster.each { |grade, students| students.sort! }
  end
end
