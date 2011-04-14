class FaqsController < ApplicationController
  # GET /faqs
  # GET /faqs.xml
  def index
    @faqs = Faq.all
    respond_with(@faqs)
  end

  # GET /faqs/1
  # GET /faqs/1.xml
  def show
    @faq = Faq.find(params[:id])
    respond_with(@faq)
  end

  # GET /faqs/new
  # GET /faqs/new.xml
  def new
    @faq = Faq.new
    respond_with(@faq)
  end

  # GET /faqs/1/edit
  def edit
    @faq = Faq.find(params[:id])
  end

  # POST /faqs
  # POST /faqs.xml
  def create
    @faq = Faq.new(params[:faq])
    flash[:notice] = 'Faq was successfully created.' if @faq.save
    respond_with(@faq)
  end

  # PUT /faqs/1
  # PUT /faqs/1.xml
  def update
    @faq = Faq.find(params[:id])
    flash[:notice] = 'Faq was successfully updated.' if @faq.update_attributes(params[:faq])
    respond_with(@faq)
  end

  # DELETE /faqs/1
  # DELETE /faqs/1.xml
  def destroy
    @faq = Faq.find(params[:id])
    @faq.destroy
    respond_with(@faq)
  end
end
