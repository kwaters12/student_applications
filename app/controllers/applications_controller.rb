class ApplicationsController < ApplicationController
  def new 
    @application = Application.new
  end

  def create
    @student = Student.find(params[:id])
    @application = @student.applications.new(params.require[:application].permit(:score))
  end

  def index 
    @applications = Application.all
  end
end
