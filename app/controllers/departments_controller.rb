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
    if @department.update(sub_params)
      redirect_to @department
    else
      render :edit
    end
  end

  def destroy
    @department.destroy
    redirect_to departments_path
  end

  private 
  
    def set_sub
      @sub = Sub.find(params[:id])
    end

    def departments_params
      params.require(:department).permit(:title)
    end

end
