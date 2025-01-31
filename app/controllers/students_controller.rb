class StudentsController < ApplicationController
  def new
    @students = SchoolClass.all
  end

  def create
    @student = Student.create(params.require(:student))
    redirect_to student_path(@student)
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    redirect_to student_path(@student)
  end
end
