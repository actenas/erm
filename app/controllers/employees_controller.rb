class EmployeesController < ApplicationController
  # GET /employees
  # GET /employees.xml
  def index
    @employees = Employee.all
    respond_with(@employees)
  end

  # GET /employees/1
  # GET /employees/1.xml
  def show
    @employee = Employee.find(params[:id])
    respond_with(@employee)
  end

  # GET /employees/new
  # GET /employees/new.xml
  def new
    @employee = Employee.new
    respond_with(@employee)
  end

  # GET /employees/1/edit
  def edit
    @employee = Employee.find(params[:id])
  end

  # POST /employees
  # POST /employees.xml
  def create
    @employee = Employee.new(params[:employee])
    flash[:notice] = 'Employee was successfully created.' if @employee.save
    respond_with(@employee)
  end

  # PUT /employees/1
  # PUT /employees/1.xml
  def update
    @employee = Employee.find(params[:id])
    flash[:notice] = 'Employee was successfully updated.' if @employee.update_attributes(params[:employee])
    respond_with(@employee)
  end

  # DELETE /employees/1
  # DELETE /employees/1.xml
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    respond_with(@employee)
  end
end
