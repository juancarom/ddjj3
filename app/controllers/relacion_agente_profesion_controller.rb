class RelacionAgenteProfesionController < ApplicationController
  def agregarProfesionAgente
    @agente = Agente.find(params[:id])
  end

  def guardar
    @agente = Agente.find(params[:id])
    @profesion = Profesion.find(params[:idProfesion])
    @profesionAgente = ProfesionAgente.new
    @profesionAgente.agente = @agente
    @profesionAgente.profesion = @profesion
    
    respond_to do |format|
      if @profesionAgente.save
        format.html { redirect_to(@agente, :notice => 'La profesion fue correctamente agregada al agente') }
        format.xml  { render :xml => @agente, :status => :created, :location => @agente }
      else
        format.html { render :action => "show" }
        format.xml  { render :xml => @agente.errors, :status => :unprocessable_entity }
      end
    end

  end

end
