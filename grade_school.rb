class School
  attr_accessor :student_body

  def initialize
    @student_body = Hash.new{ |hash, key| hash[key] = Array.new}
  end

  def add(student_name, grade)
    student_body[grade] << student_name
  end

  def students(grade)
    student_body[grade].sort
  end

  def students_by_grade
    student_body.map { |grd, stds| { :grade => grd, :students => stds.sort } }
                .sort_by { |grd, stds| grd[:grade] }
  end
end
