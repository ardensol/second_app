class ShirtsController < ApplicationController
  # GET /shirts
  # GET /shirts.json
  def index
    @shirts = Shirt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shirts }
    end
  end

  # GET /shirts/1
  # GET /shirts/1.json
  def show
    @shirt = Shirt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shirt }
    end
  end

  # GET /shirts/new
  # GET /shirts/new.json
  def new
    @shirt = Shirt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shirt }
    end
  end

  # GET /shirts/1/edit
  def edit
    @shirt = Shirt.find(params[:id])
  end

  # POST /shirts
  # POST /shirts.json
  def create
    @shirt = Shirt.new(params[:shirt])

    respond_to do |format|
      if @shirt.save
        format.html { redirect_to @shirt, notice: 'Shirt was successfully created.' }
        format.json { render json: @shirt, status: :created, location: @shirt }
      else
        format.html { render action: "new" }
        format.json { render json: @shirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shirts/1
  # PUT /shirts/1.json
  def update
    @shirt = Shirt.find(params[:id])

    respond_to do |format|
      if @shirt.update_attributes(params[:shirt])
        format.html { redirect_to @shirt, notice: 'Shirt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shirts/1
  # DELETE /shirts/1.json
  def destroy
    @shirt = Shirt.find(params[:id])
    @shirt.destroy

    respond_to do |format|
      format.html { redirect_to shirts_url }
      format.json { head :no_content }
    end
  end
end
