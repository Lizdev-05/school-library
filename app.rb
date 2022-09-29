require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative 'book'
require_relative 'classroom'

class App
    def initialize
        @people = []
        @books = []
        @rentals = []    
    end

    def book_list
        puts 'No book!' if @books.empty?
        @books.each { |book| puts 'Title: #{book.title}, Author: #{book.author}'}
    end

    def person_list
        puts 'No person!' if @people.empty?
        @people.each { |person| puts '[#{person.class}], Name: #{person.name}, Age: #{person.age}, ID: #{person.id}'}
    end

    def create_person
        print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
        option = gets.chomp
        
        case option
        when '1'
            create_student
        when '2'
            create_teacher
        else
            'You have entered an invalid input'
        end
        puts 'Person created successfully 😊'
    end

    def create_teacher
        print "teacher's name: "
        name = gets.chomp

        print "teacher's age: "
        age = gets.chomp

        print "teacher's specialization: "
        specialization = gets.chomp

        teacher = Teacher.new(name, age, specialization, parent_permission: true)
        puts 'Teacher created successfully 😊'
        @people.push(teacher)
    end

    def create_student
        print "student's name"
        name = gets.chomp

        print = "student's age"
        age = gets.chomp

        print "has parent permission? [Y/N]"
        parent_permission = gets.chomp.upcase

        case parent_permission
        when 'N'
            student = Student.new(name, age, parent_permission: false)
            @people.push(student)
        when 'Y'
            student = Student.new(name, age, parent_permission: true)
            @people.push(student)
        else
           'You have entered an invalid input' 
        end

        puts 'Student created successfully 😊'
    end

    def create_book
        print "book's title"
        title = gets.chomp

        print "book's author"
        author = gets.chomp

        book = Book.new(title, author)
        @books.push(book)

        puts 'Book created successfully 😊'
    end

    def create_rental
        if @books.size.zero?
            puts 'No book available'
        elsif @people.size.zero?
            puts 'No person available'

        else 
            puts 'Select a book by number'
            @books.each_with_index { |index, book| puts '#{index}, Title: #{title}, Author: #{author}'} 
            select_book = gets.chomp.to_i

            puts 'Select a person by number'
            @people.each_with_index { |person, index| puts '#{index}, Name: #{name}, Age: #{age}'}
        end

        select_person.chomp.to_i

        puts 'Enter date [YYYY-MM-DD]'
        select_date = gets.chomp.to_s

        rental_item = Rental.new(date, @books[select_book], @people[select_person])
        @rentals.push(rental_item)
       
        puts 'Rental created successfully😊'
    end   
end

