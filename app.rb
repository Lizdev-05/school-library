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
end

