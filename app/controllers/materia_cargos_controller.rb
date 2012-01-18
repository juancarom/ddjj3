class MateriaCargosController < ApplicationController
  # GET /materia_cargos
  # GET /materia_cargos.xml
  def index
    @materia_cargos = MateriaCargo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @materia_cargos }
    end
  end

  # GET /materia_cargos/1
  # GET /materia_cargos/1.xml
  def show
    @materia_cargo = MateriaCargo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @materia_cargo }
    end
  end

  # GET /materia_cargos/new
  # GET /materia_cargos/new.xml
  def new
    @materia_cargo = MateriaCargo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @materia_cargo }
    end
  end

  # GET /materia_cargos/1/edit
  def edit
    @materia_cargo = MateriaCargo.find(params[:id])
  end

  # POST /materia_cargos
  # POST /materia_cargos.xml
  def create
    @materia_cargo = MateriaCargo.new(params[:materia_cargo])

    respond_to do |format|
      if @materia_cargo.save
        format.html { redirect_to(@materia_cargo, :notice => 'Materia cargo was successfully created.') }
        format.xml  { render :xml => @materia_cargo, :status => :created, :location => @materia_cargo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @materia_cargo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /materia_cargos/1
  # PUT /materia_cargos/1.xml
  def update
    @materia_cargo = MateriaCargo.find(params[:id])

    respond_to do |format|
      if @materia_cargo.update_attributes(params[:materia_cargo])
        format.html { redirect_to(@materia_cargo, :notice => 'Materia cargo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @materia_cargo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /materia_cargos/1
  # DELETE /materia_cargos/1.xml
  def destroy
    @materia_cargo = MateriaCargo.find(params[:id])
    @materia_cargo.destroy

    respond_to do |format|
      format.html { redirect_to(materia_cargos_url) }
      format.xml  { head :ok }
    end
  end
end
