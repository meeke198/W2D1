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
    if @students.length < @student_capacity
      @students << student
      return true
    else
      return false
    end
  end

  def enrolled?(student)
    @students.map.any?{|enrolled_student| enrolled_student.include?(student)}
  end

  def student_to_teacher_ratio
    @students.length / @teachers.length
  end

  def add_grade(student, grade)
    if self.enrolled?(student) == true
      @grades[student] << grade
      return true
    else
      return false
    end
  end

  def num_grades(student)
    @grades[student].length
  end

  def average_grade(student)
    if @grades[student].empty? || self.enrolled?(student) == false
      return nil
    else
      return (@grades[student]).sum / @grades[student].length
    end
  end

end
