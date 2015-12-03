class EmployeesController < ApplicationController
  before_action :set_employee, :except => [:index,:new,:create]
def new
    @employee = Employee.new
  end

  def index
    @employees = Employee.all

  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path
    else
      render :new
    end
  end


  def edit
  end

  def update
    params[:employee][:skill_ids] ||= []
    if  @employee.update(employee_params)
      redirect_to employees_path
    else
      render :edit
    end
  end

  def show
  end

def destroy
@employee.destroy
redirect_to employees_path
end

private
def set_employee
  @employee = Employee.find(params[:id])
end

def employee_params
  params.require(:employee).permit!
end


end
