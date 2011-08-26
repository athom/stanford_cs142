class NoamisController < ApplicationController
  # GET /noamis
  # GET /noamis.xml
  def index
    @noamis = Noami.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @noamis }
    end
  end

  # GET /noamis/1
  # GET /noamis/1.xml
  def show
    #@noami = Noami.find(params[:id])
    @us = [
      {:label => "Inventory", :url => "/tabs/show2"},
      {:label => "Order Information", :url => "/tabs/show2"},
      {:label => "Account", :url => "/tabs/show2"},
      {:label => "Shipers", :url => "/tabs/show2"},
      {:label => "Suppliers", :url => "/tabs/show2"},
      {:label => "Show2", :url => "/tabs/show2"}
    ]

    respond_to do |format|
      format.html
      format.xml  { render :xml => @noami }
    end
  end

  # GET /noamis/new
  # GET /noamis/new.xml
  def new
    @noami = Noami.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @noami }
    end
  end

  # GET /noamis/1/edit
  def edit
    @noami = Noami.find(params[:id])
  end

  # POST /noamis
  # POST /noamis.xml
  def create
    @noami = Noami.new(params[:noami])
    @selected_label = params[:sl]
    @as = params[:ass]
    @us = @as

    respond_to do |format|
      if @noami.save
        format.html {}
        format.js
        format.xml  { render :xml => @noami, :status => :created, :location => @noami }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @noami.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /noamis/1
  # PUT /noamis/1.xml
  def update
    @noami = Noami.find(params[:id])

    respond_to do |format|
      if @noami.update_attributes(params[:noami])
        format.html { redirect_to(@noami, :notice => 'Noami was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @noami.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /noamis/1
  # DELETE /noamis/1.xml
  def destroy
    @noami = Noami.find(params[:id])
    @noami.destroy

    respond_to do |format|
      format.html { redirect_to(noamis_url) }
      format.xml  { head :ok }
    end
  end
end
