class CustomizationsController < ApplicationController
  # GET /customizations
  # GET /customizations.json
  def index
    @customizations = Customization.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customizations }
    end
  end

  # GET /customizations/1
  # GET /customizations/1.json
  def show
    @customization = Customization.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customization }
    end
  end

  # GET /customizations/new
  # GET /customizations/new.json
  def new
    @customization = Customization.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customization }
    end
  end

  # GET /customizations/1/edit
  def edit
    @customization = Customization.find(params[:id])
  end

  # POST /customizations
  # POST /customizations.json
  def create
    @customization = Customization.new(params[:customization])

    respond_to do |format|
      if @customization.save
        format.html { redirect_to @customization, notice: 'Customization was successfully created.' }
        format.json { render json: @customization, status: :created, location: @customization }
      else
        format.html { render action: "new" }
        format.json { render json: @customization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customizations/1
  # PUT /customizations/1.json
  def update
    @customization = Customization.find(params[:id])

    respond_to do |format|
      if @customization.update_attributes(params[:customization])
        format.html { redirect_to @customization, notice: 'Customization was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customizations/1
  # DELETE /customizations/1.json
  def destroy
    @customization = Customization.find(params[:id])
    @customization.destroy

    respond_to do |format|
      format.html { redirect_to customizations_url }
      format.json { head :no_content }
    end
  end
end
