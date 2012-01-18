class DdjjsController < ApplicationController
  # GET /ddjjs
  # GET /ddjjs.xml
  def index
    @ddjjs = Ddjj.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ddjjs }
    end
  end

  # GET /ddjjs/1
  # GET /ddjjs/1.xml
  def show
    @ddjj = Ddjj.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ddjj }
    end
  end

  # GET /ddjjs/new
  # GET /ddjjs/new.xml
  def new
    @ddjj = Ddjj.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ddjj }
    end
  end

  # GET /ddjjs/1/edit
  def edit
    @ddjj = Ddjj.find(params[:id])
  end

  # POST /ddjjs
  # POST /ddjjs.xml
  def create
    @ddjj = Ddjj.new(params[:ddjj])

    respond_to do |format|
      if @ddjj.save
        format.html { redirect_to(@ddjj, :notice => 'Ddjj was successfully created.') }
        format.xml  { render :xml => @ddjj, :status => :created, :location => @ddjj }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ddjj.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ddjjs/1
  # PUT /ddjjs/1.xml
  def update
    @ddjj = Ddjj.find(params[:id])

    respond_to do |format|
      if @ddjj.update_attributes(params[:ddjj])
        format.html { redirect_to(@ddjj, :notice => 'Ddjj was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ddjj.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ddjjs/1
  # DELETE /ddjjs/1.xml
  def destroy
    @ddjj = Ddjj.find(params[:id])
    @ddjj.destroy

    respond_to do |format|
      format.html { redirect_to(ddjjs_url) }
      format.xml  { head :ok }
    end
  end
end
