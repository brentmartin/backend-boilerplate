class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
