class Main
    def self.home_page
        puts 'Welcome to School library App!'
         puts 'Please enter a number: '
  
      @content = {
        '1' => 'List all books',
        '2' => 'List all people',
        '3' => 'Create a person (teacher or student)',
        '4' => 'Create a book',
        '5' => 'Create a rental',
        '6' => 'List all rentals for a given person id',
        '7' => 'Exit'
      }
      @content.each { |index, string| puts "#{index} - #{string}" }
  
      Integer(gets.chomp)
    end
end  

p Main.home_page


