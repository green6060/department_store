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
    @department = Department.find(params[:id])

    if @department.update(departments_params)
      redirect_to departments_path
    else
      render :edit
    end
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
