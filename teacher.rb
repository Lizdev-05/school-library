require './person'

class Teacher < Person
  def initialize(specialization)
    super(age)
    @specialization = specialization
  end

  def can_use_service
    true
  end
end
