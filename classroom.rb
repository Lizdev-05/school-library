class Classroom
    attr_accessor :label
    attr_reader :student

    def initialize(label)
        @label = label
        @student = []
    end

    def has_students(student)
        @student.push(student)
        student.classroom = self
    end
end    