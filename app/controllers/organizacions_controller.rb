class OrganizacionsController < ApplicationController
  # GET /organizacions
  # GET /organizacions.xml
  def index
    @organizacions = Organizacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @organizacions }
    end
  end

  # GET /organizacions/1
  # GET /organizacions/1.xml
  def show
    @organizacion = Organizacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @organizacion }
    end
  end

  # GET /organizacions/new
  # GET /organizacions/new.xml
  def new
    @organizacion = Organizacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @organizacion }
    end
  end

  # GET /organizacions/1/edit
  def edit
    @organizacion = Organizacion.find(params[:id])
  end

  # POST /organizacions
  # POST /organizacions.xml
  def create
    @organizacion = Organizacion.new(params[:organizacion])

    respond_to do |format|
      if @organizacion.save
        format.html { redirect_to(@organizacion, :notice => 'Organizacion was successfully created.') }
        format.xml  { render :xml => @organizacion, :status => :created, :location => @organizacion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @organizacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /organizacions/1
  # PUT /organizacions/1.xml
  def update
    @organizacion = Organizacion.find(params[:id])

    respond_to do |format|
      if @organizacion.update_attributes(params[:organizacion])
        format.html { redirect_to(@organizacion, :notice => 'Organizacion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @organizacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /organizacions/1
  # DELETE /organizacions/1.xml
  def destroy
    @organizacion = Organizacion.find(params[:id])
    @organizacion.destroy

    respond_to do |format|
      format.html { redirect_to(organizacions_url) }
      format.xml  { head :ok }
    end
  end
end
