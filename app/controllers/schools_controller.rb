class SchoolsController < ApplicationController

  def index
    @schools = School.all
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new
    @school.name = params[:school][:name]
    @school.motto = params[:school][:motto]
    @school.location = params[:school][:location]

    if @school.save
      redirect_to school_path(@school.id), notice: "Success!"
    else
      flash[:alert] = "Error Occured! School couldn't be saved!"
      render :new
    end
  end

  def show # GET /schools/:id
    @school = School.find(params[:id])
  end


  end

end
