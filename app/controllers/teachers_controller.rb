class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def show # GET /schools/:id
    @teacher = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to school_path(@teacher.school_id), notice: "Success!"
    else
      flash[:alert] = "Error Occured! School couldn't be saved!"
      render :new
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(:id, :name, :age, :school_id)
  end

end
