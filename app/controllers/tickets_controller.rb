class TicketsController < ApplicationController
  # GET /tickets
  # GET /tickets.xml
  def index
    @tickets = Ticket.all
    respond_with(@tickets)
  end

  # GET /tickets/1
  # GET /tickets/1.xml
  def show
    @ticket = Ticket.find(params[:id])
    respond_with(@ticket)
  end

  # GET /tickets/new
  # GET /tickets/new.xml
  def new
    @ticket = Ticket.new
    respond_with(@ticket)
  end

  # GET /tickets/1/edit
  def edit
    @ticket = Ticket.find(params[:id])
  end

  # POST /tickets
  # POST /tickets.xml
  def create
    @ticket = Ticket.new(params[:ticket])
    flash[:notice] = 'Ticket was successfully created.' if @ticket.save
    respond_with(@ticket)
  end

  # PUT /tickets/1
  # PUT /tickets/1.xml
  def update
    @ticket = Ticket.find(params[:id])
    flash[:notice] = 'Ticket was successfully updated.' if @ticket.update_attributes(params[:ticket])
    respond_with(@ticket)
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.xml
  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    respond_with(@ticket)
  end
end
