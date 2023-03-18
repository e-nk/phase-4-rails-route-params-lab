class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end
  def grades
    grades = Student.all.order(grade: :desc)
    render json: grades
  end

  def highest_grade
    highest_grade = Student.all.order(grade: :desc).first
    render json: highest_grade
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
