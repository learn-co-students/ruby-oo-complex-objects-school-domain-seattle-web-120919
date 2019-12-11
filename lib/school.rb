class School
    attr_accessor :name, :roster

   
    def initialize(name)
      @name = name
      @roster = {}
    end
   
    def add_student(name, grade)
        @roster.add({grade: name})
    end
   
  end