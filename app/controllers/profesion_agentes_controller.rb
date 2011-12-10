class ProfesionAgentesController < ApplicationController
  # GET /profesion_agentes
  # GET /profesion_agentes.xml
  def index
    @profesion_agentes = ProfesionAgente.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @profesion_agentes }
    end
  end

  # GET /profesion_agentes/1
  # GET /profesion_agentes/1.xml
  def show
    @profesion_agente = ProfesionAgente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @profesion_agente }
    end
  end

  # GET /profesion_agentes/new
  # GET /profesion_agentes/new.xml
  def new
    @profesion_agente = ProfesionAgente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @profesion_agente }
    end
  end

  # GET /profesion_agentes/1/edit
  def edit
    @profesion_agente = ProfesionAgente.find(params[:id])
  end

  # POST /profesion_agentes
  # POST /profesion_agentes.xml
  def create
    @profesion_agente = ProfesionAgente.new(params[:profesion_agente])

    respond_to do |format|
      if @profesion_agente.save
        format.html { redirect_to(@profesion_agente, :notice => 'Profesion agente was successfully created.') }
        format.xml  { render :xml => @profesion_agente, :status => :created, :location => @profesion_agente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @profesion_agente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /profesion_agentes/1
  # PUT /profesion_agentes/1.xml
  def update
    @profesion_agente = ProfesionAgente.find(params[:id])

    respond_to do |format|
      if @profesion_agente.update_attributes(params[:profesion_agente])
        format.html { redirect_to(@profesion_agente, :notice => 'Profesion agente was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @profesion_agente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /profesion_agentes/1
  # DELETE /profesion_agentes/1.xml
  def destroy
    @profesion_agente = ProfesionAgente.find(params[:id])
    @profesion_agente.destroy

    respond_to do |format|
      format.html { redirect_to(profesion_agentes_url) }
      format.xml  { head :ok }
    end
  end
end
