class BoxrequestsController < ApplicationController
  # GET /boxrequests
  # GET /boxrequests.json
  def index
    @boxrequests = Boxrequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @boxrequests }
    end
  end

  # GET /boxrequests/1
  # GET /boxrequests/1.json
  def show
    @boxrequest = Boxrequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @boxrequest }
    end
  end

  # GET /boxrequests/new
  # GET /boxrequests/new.json
  def new
    @boxrequest = Boxrequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @boxrequest }
    end
  end

  # GET /boxrequests/1/edit
  def edit
    @boxrequest = Boxrequest.find(params[:id])
  end

  # POST /boxrequests
  # POST /boxrequests.json
  def create
    @boxrequest = Boxrequest.new(params[:boxrequest])

    respond_to do |format|
      if @boxrequest.save
        format.html { redirect_to @boxrequest, notice: 'Boxrequest was successfully created.' }
        format.json { render json: @boxrequest, status: :created, location: @boxrequest }
      else
        format.html { render action: "new" }
        format.json { render json: @boxrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /boxrequests/1
  # PUT /boxrequests/1.json
  def update
    @boxrequest = Boxrequest.find(params[:id])

    respond_to do |format|
      if @boxrequest.update_attributes(params[:boxrequest])
        format.html { redirect_to @boxrequest, notice: 'Boxrequest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @boxrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boxrequests/1
  # DELETE /boxrequests/1.json
  def destroy
    @boxrequest = Boxrequest.find(params[:id])
    @boxrequest.destroy

    respond_to do |format|
      format.html { redirect_to boxrequests_url }
      format.json { head :no_content }
    end
  end
end
