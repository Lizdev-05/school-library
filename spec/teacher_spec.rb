require_relative ('spec_helper')

describe Teacher do
    before(:each) do
        @teacher = Teacher.new(specialization = 'Math', age = 21, name = 'John', parent_permission: true)
    end
    
    describe '#new' do
        context 'When creating a new teacher' do
        it 'Should return a Teacher object' do
            expect(@teacher).to be_an_instance_of(Teacher)
        end
    
       
    
    end