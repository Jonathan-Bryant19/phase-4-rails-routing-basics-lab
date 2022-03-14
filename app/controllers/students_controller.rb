class StudentsController < ApplicationController
  
  def index
    student = Student.all
    render json: student
  end

  def grades
    grade = Student.order(grade: :desc)
    render json: grade
  end

  def highest_grade
    highest_grade = Student.order(grade: :desc).first
    render json: highest_grade
  end

end
