require './person.rb'

class Teacher < Person
    def initialize(specialization)
        @specialization = specialization
    end
