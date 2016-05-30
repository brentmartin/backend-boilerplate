class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.name = params[:student][:name]
    @student.age = params[:student][:age]
    @student.school_id = params[:student][:school_id]

    if @student.save
      redirect_to student_path(@student.id), notice: "Success!"
    else
      flash[:alert] = "Error Occured! School couldn't be saved!"
      render :new
    end
  end

  def edit
  end
end
