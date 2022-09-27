class Person
    def initialize(name = 'Unknown', age, parent_permission = true)
        @id = Random.rand(1..100)
        @name = name
        @age = age 
    end
end