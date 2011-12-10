class AgentesController < ApplicationController
  # GET /agentes
  # GET /agentes.xml
  def index
    @agentes = Agente.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @agentes }
    end
  end

  # GET /agentes/1
  # GET /agentes/1.xml
  def show
    @agente = Agente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @agente }
    end
  end

  # GET /agentes/new
  # GET /agentes/new.xml
  def new
    @agente = Agente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @agente }
    end
  end

  # GET /agentes/1/edit
  def edit
    @agente = Agente.find(params[:id])
  end

  # POST /agentes
  # POST /agentes.xml
  def create
    @agente = Agente.new(params[:agente])

    respond_to do |format|
      if @agente.save
        format.html { redirect_to(@agente, :notice => 'El Agente fue correctamente creado') }
        format.xml  { render :xml => @agente, :status => :created, :location => @agente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @agente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /agentes/1
  # PUT /agentes/1.xml
  def update
    @agente = Agente.find(params[:id])

    respond_to do |format|
      if @agente.update_attributes(params[:agente])
        format.html { redirect_to(@agente, :notice => 'El Agente fue correctamente actualizado.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @agente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /agentes/1
  # DELETE /agentes/1.xml
  def destroy
    @agente = Agente.find(params[:id])
    @agente.destroy

    respond_to do |format|
      format.html { redirect_to(agentes_url) }
      format.xml  { head :ok }
    end
  end
end
