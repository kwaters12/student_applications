class StudentsController < ApplicationController

  def index
    @students = Student.order('name asc')

    @student_applications = Student.all.order('applications_count')
  end

  def new 
    @student = Student.new
  end

  def create
    @student = Student.new(params.require[:student].permit(:name, :address))
  end

  private

  def applications
    @student = Student.find(params[:id])
    @applications = @student.applications.count.order('desc')
  end

  
end
