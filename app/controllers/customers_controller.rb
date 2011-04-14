class CustomersController < ApplicationController
  # GET /customers
  # GET /customers.xml
  def index
    @customers = Customer.all
    respond_with(@customers)
  end

  # GET /customers/1
  # GET /customers/1.xml
  def show
    @customer = Customer.find(params[:id])
    respond_with(@customer)
  end

  # GET /customers/new
  # GET /customers/new.xml
  def new
    @customer = Customer.new
    respond_with(@customer)
  end

  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
  end

  # POST /customers
  # POST /customers.xml
  def create
    @customer = Customer.new(params[:customer])
    flash[:notice] = 'Customer was successfully created.' if @customer.save
    respond_with(@customer)
  end

  # PUT /customers/1
  # PUT /customers/1.xml
  def update
    @customer = Customer.find(params[:id])
    flash[:notice] = 'Customer was successfully updated.' if @customer.update_attributes(params[:customer])
    respond_with(@customer)
  end

  # DELETE /customers/1
  # DELETE /customers/1.xml
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    respond_with(@customer)
  end
end
