class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new{|h, k| h[k] = []}
  end

  def name
    return @name
  end

  def slogan
    return @slogan
  end

  def students
    return @students
  end

  def teachers
    return @teachers
  end


  def hire(teacher)
    return @teachers.push(teacher)
  end

  def enroll(student)
    if students.size < student_capacity.size
      students << student
      return true
    else
      false
    end
  end

#   def enrolled?(student)
#     puts student.enroll
#   end

#   def self.student_to_teacher_ratio(students, teachers)
#     puts (students.length / teachers.length).floor(1)
#   end
end
