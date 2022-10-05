require_relative ('spec_helper')

describe Student do
    before(:each) do
        @student = Student.new(nil, age = 21, name = 'John', parent_permission: true)
    end
    
    describe '#new' do
        context 'When creating a new student' do
        it 'Should return a Student object' do
            expect(@student).to be_an_instance_of(Student)
        end
    
        it 'Should return the correct name' do
            expect(@student.name).to eq('John')
        end
    
       
    end
    
    end