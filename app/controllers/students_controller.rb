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
    @student = Student.new(student_params)

    if @student.save
      redirect_to student_path(@student.id), notice: "Success!"
    else
      flash[:alert] = "Error Occured! School couldn't be saved!"
      render :new
    end
  end
  
  private

  def student_params
    params.require(:student).permit(:id, :name, :age, :school_id, :teacher_id)
  end

end
