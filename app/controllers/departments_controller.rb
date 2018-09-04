class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end

  def show
    @department = Department.find(params[:id])
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(departments_params)

    if @department.save
      redirect_to departments_path
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
    def departments_params
      params.require(:department).permit(:title)
    end
end
