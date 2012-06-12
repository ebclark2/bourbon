require 'distilleries_helper'

class WhiskeysController < ApplicationController
  # GET /whiskeys
  # GET /whiskeys.json
  def index
    @whiskeys = Whiskey.find(:all, :order => :name)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @whiskeys }
      format.xml { render :xml => @whiskeys }
    end
  end

  # GET /whiskeys/1
  # GET /whiskeys/1.json
  def show
    @whiskey = Whiskey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @whiskey }
      format.xml { render :xml => @whiskey }
    end
  end

  # GET /whiskeys/new
  # GET /whiskeys/new.json
  def new
    @whiskey = Whiskey.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @whiskey }
      format.xml { render :xml => @whiskey }
    end
  end

  # GET /whiskeys/1/edit
  def edit
    @whiskey = Whiskey.find(params[:id])
  end

  # POST /whiskeys
  # POST /whiskeys.json
  def create
    whiskeyParams = params[:whiskey]
    whiskeyParams = params[:whiskey]
    if !whiskeyParams.has_key?(:distillery) and whiskeyParams.has_key?(:distillery_id)
      distillery = Distillery.find(whiskeyParams[:distillery_id])
      whiskeyParams[:distillery] = distillery
    end
    @whiskey = Whiskey.new(whiskeyParams)

    respond_to do |format|
      if @whiskey.save
        format.html { redirect_to @whiskey, :notice => 'Whiskey was successfully created.' }
        format.json { render :json => @whiskey, :status => :created, :location => @whiskey }
        format.xml { render :xml => @whiskey, :status => :created, :location => @whiskey }
      else
        format.html { render :action => "new" }
        format.json { render :json => @whiskey.errors, :status => :unprocessable_entity }
        format.xml { render :xml => @whiskey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /whiskeys/1
  # PUT /whiskeys/1.json
  def update
    @whiskey = Whiskey.find(params[:id])

    respond_to do |format|
      whiskeyParams = params[:whiskey]
      if !whiskeyParams.has_key?(:distillery) and whiskeyParams.has_key?(:distillery_id)
        distillery = Distillery.find(whiskeyParams[:distillery_id])
        whiskeyParams[:distillery] = distillery
      end
      if @whiskey.update_attributes(whiskeyParams)
        format.html { redirect_to @whiskey, :notice => 'Whiskey was successfully updated.' }
        format.json { head :no_content }
        format.xml { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @whiskey.errors, :status => :unprocessable_entity }
        format.xml { render :xml => @whiskey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /whiskeys/1
  # DELETE /whiskeys/1.json
  def destroy
    @whiskey = Whiskey.find(params[:id])
    @whiskey.destroy

    respond_to do |format|
      format.html { redirect_to whiskeys_url }
      format.json { head :no_content }
      format.xml { head :no_content }
    end
  end
end
