class ItemDdjjsController < ApplicationController
  # GET /item_ddjjs
  # GET /item_ddjjs.xml
  def index
    @item_ddjjs = ItemDdjj.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @item_ddjjs }
    end
  end

  # GET /item_ddjjs/1
  # GET /item_ddjjs/1.xml
  def show
    @item_ddjj = ItemDdjj.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item_ddjj }
    end
  end

  # GET /item_ddjjs/new
  # GET /item_ddjjs/new.xml
  def new
    @item_ddjj = ItemDdjj.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @item_ddjj }
    end
  end

  # GET /item_ddjjs/1/edit
  def edit
    @item_ddjj = ItemDdjj.find(params[:id])
  end

  # POST /item_ddjjs
  # POST /item_ddjjs.xml
  def create
    @item_ddjj = ItemDdjj.new(params[:item_ddjj])

    respond_to do |format|
      if @item_ddjj.save
        format.html { redirect_to(@item_ddjj, :notice => 'Item ddjj was successfully created.') }
        format.xml  { render :xml => @item_ddjj, :status => :created, :location => @item_ddjj }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @item_ddjj.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /item_ddjjs/1
  # PUT /item_ddjjs/1.xml
  def update
    @item_ddjj = ItemDdjj.find(params[:id])

    respond_to do |format|
      if @item_ddjj.update_attributes(params[:item_ddjj])
        format.html { redirect_to(@item_ddjj, :notice => 'Item ddjj was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @item_ddjj.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /item_ddjjs/1
  # DELETE /item_ddjjs/1.xml
  def destroy
    @item_ddjj = ItemDdjj.find(params[:id])
    @item_ddjj.destroy

    respond_to do |format|
      format.html { redirect_to(item_ddjjs_url) }
      format.xml  { head :ok }
    end
  end
end
