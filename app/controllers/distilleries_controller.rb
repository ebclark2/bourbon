
class DistilleriesController < ApplicationController
  # GET /distilleries
  # GET /distilleries.json
  def index
    @distilleries = Distillery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @distilleries }
    end
  end

  # GET /distilleries/1
  # GET /distilleries/1.json
  def show
    @distillery = Distillery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @distillery }
    end
  end

  # GET /distilleries/new
  # GET /distilleries/new.json
  def new
    @distillery = Distillery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @distillery }
    end
  end

  # GET /distilleries/1/edit
  def edit
    @distillery = Distillery.find(params[:id])
  end

  # POST /distilleries
  # POST /distilleries.json
  def create
    @distillery = Distillery.new(params[:distillery])

    respond_to do |format|
      if @distillery.save
        format.html { redirect_to @distillery, :notice => 'Distillery was successfully created.' }
        format.json { render :json => @distillery, :status => :created, :location => @distillery }
      else
        format.html { render :action => "new" }
        format.json { render :json => @distillery.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /distilleries/1
  # PUT /distilleries/1.json
  def update
    @distillery = Distillery.find(params[:id])

    respond_to do |format|
      if @distillery.update_attributes(params[:distillery])
        format.html { redirect_to @distillery, :notice => 'Distillery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @distillery.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /distilleries/1
  # DELETE /distilleries/1.json
  def destroy
    @distillery = Distillery.find(params[:id])
    @distillery.destroy

    respond_to do |format|
      format.html { redirect_to distilleries_url }
      format.json { head :no_content }
    end
  end
end
