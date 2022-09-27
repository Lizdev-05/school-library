class Person
    attr_accessor :name, :age
    attr_reader :id
    def initialize(name = 'Unknown', age, parent_permission: true)
        @id = Random.rand(1..100)
        @name = name
        @age = age 
        @parent_permission = parent_permission
    end

    def of_age
      return  @age >= 18? true : false
    end

    private :of_age

    def can_use_service
        of_age || @parent_permission == true
    end
end

p person_1 = Person.new('oyin', 22)
p person_1.can_use_service



