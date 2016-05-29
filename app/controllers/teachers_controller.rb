class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
