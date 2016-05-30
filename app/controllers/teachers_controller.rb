class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def show
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new
    @teacher.name = params[:teacher][:name]
    @teacher.age = params[:teacher][:age]
    @teacher.school_id = params[:teacher][:school_id]

    if @teacher.save
      redirect_to teacher_path(@teacher.id), notice: "Success!"
    else
      flash[:alert] = "Error Occured! School couldn't be saved!"
      render :new
    end
  end
  end

  def edit
  end
end
