class GrupoHorarioItemDdjjsController < ApplicationController
  # GET /grupo_horario_item_ddjjs
  # GET /grupo_horario_item_ddjjs.xml
  def index
    @grupo_horario_item_ddjjs = GrupoHorarioItemDdjj.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @grupo_horario_item_ddjjs }
    end
  end

  # GET /grupo_horario_item_ddjjs/1
  # GET /grupo_horario_item_ddjjs/1.xml
  def show
    @grupo_horario_item_ddjj = GrupoHorarioItemDdjj.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @grupo_horario_item_ddjj }
    end
  end

  # GET /grupo_horario_item_ddjjs/new
  # GET /grupo_horario_item_ddjjs/new.xml
  def new
    @grupo_horario_item_ddjj = GrupoHorarioItemDdjj.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @grupo_horario_item_ddjj }
    end
  end

  # GET /grupo_horario_item_ddjjs/1/edit
  def edit
    @grupo_horario_item_ddjj = GrupoHorarioItemDdjj.find(params[:id])
  end

  # POST /grupo_horario_item_ddjjs
  # POST /grupo_horario_item_ddjjs.xml
  def create
    @grupo_horario_item_ddjj = GrupoHorarioItemDdjj.new(params[:grupo_horario_item_ddjj])

    respond_to do |format|
      if @grupo_horario_item_ddjj.save
        format.html { redirect_to(@grupo_horario_item_ddjj, :notice => 'Grupo horario item ddjj was successfully created.') }
        format.xml  { render :xml => @grupo_horario_item_ddjj, :status => :created, :location => @grupo_horario_item_ddjj }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @grupo_horario_item_ddjj.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /grupo_horario_item_ddjjs/1
  # PUT /grupo_horario_item_ddjjs/1.xml
  def update
    @grupo_horario_item_ddjj = GrupoHorarioItemDdjj.find(params[:id])

    respond_to do |format|
      if @grupo_horario_item_ddjj.update_attributes(params[:grupo_horario_item_ddjj])
        format.html { redirect_to(@grupo_horario_item_ddjj, :notice => 'Grupo horario item ddjj was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @grupo_horario_item_ddjj.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_horario_item_ddjjs/1
  # DELETE /grupo_horario_item_ddjjs/1.xml
  def destroy
    @grupo_horario_item_ddjj = GrupoHorarioItemDdjj.find(params[:id])
    @grupo_horario_item_ddjj.destroy

    respond_to do |format|
      format.html { redirect_to(grupo_horario_item_ddjjs_url) }
      format.xml  { head :ok }
    end
  end
end
