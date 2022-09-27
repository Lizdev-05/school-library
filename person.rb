class Person
    attr_accessor :name, :age
    attr_reader :id
    def initialize(name = 'Unknown', age, parent_permission = true)
        @id = Random.rand(1..100)
        @name = name
        @age = age 
    end

    def is_of_age
      return  @age >= i8? true : false
    end
end