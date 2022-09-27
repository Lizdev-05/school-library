require './person.rb'

class Teacher < Person
    def initialize(specialization)
        @specialization = specialization
    end

    def can_use_service
        true
    end
end 
