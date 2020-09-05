class Course
  attr_reader :name, :professor, :students

  def initialize(name, professor)
    @name = name
    @professor = professor
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def houses_represented
    @students.reduce([]) do |houses, student|
      houses << students.house
      houses
    end.uniq
  end

#or

    # houses = @students.map do |student|
    #   student.house
    # end
    # houses.uniq

#or

    # @students.map(&:house).uniq < shorthand for ^
end
