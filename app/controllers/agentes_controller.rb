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
  #  @dni = params[:agente, :dni]
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
  
  
  def calcularCuil
      # xy = 20 o 27
      # dni = a b c d e f g h
#------------------------------------------------------------------       
      # x * 5 = x5
      # y * 4 = x4
      # -
      # a * 3 = a3
      # b * 2 = b2
      # c * 7 = c7
      # d * 6 = d6
      # e * 5 = e5
      # f * 4 = f4
      # g * 3 = g3
      # h * 2 = h2
#------------------------------------------------------------------       
      # valor1 = (x5 + x4 + a3 + b2 + c7 + d6 + e5 + f4 + g3 + h2)
#------------------------------------------------------------------       
      # z = valor1 % 11 
#------------------------------------------------------------------       
      # si z = 0 entonces
      # z = 0     # redundante pero para verlo mejor
#------------------------------------------------------------------       
      # sino
        # si z = 1 entonces
          # si masculino
            # z = 9 # la cola del cuil = 9
            # y = 3 # entonces queda xy = 23
          # si femenino
            # z = 4 # la cola del cuil = 4
            # y = 3   # entonces queda xy = 23
        # sino 
          # z = 11 - valor1
        # finsi
      # finsi
#------------------------------------------------------------------       
      # cuil =  x y - a b c d e f g h - z
      # retornar cuil
  end
end
