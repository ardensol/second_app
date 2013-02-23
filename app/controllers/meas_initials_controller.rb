class MeasInitialsController < ApplicationController
  # GET /meas_initials
  # GET /meas_initials.json
  def index
    @meas_initials = MeasInitial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meas_initials }
    end
  end

  # GET /meas_initials/1
  # GET /meas_initials/1.json
  def show
    @meas_initial = MeasInitial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meas_initial }
    end
  end

  # GET /meas_initials/new
  # GET /meas_initials/new.json
  def new
    @meas_initial = MeasInitial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meas_initial }
    end
  end

  # GET /meas_initials/1/edit
  def edit
    @meas_initial = MeasInitial.find(params[:id])
  end

  # POST /meas_initials
  # POST /meas_initials.json
  def create
    @meas_initial = MeasInitial.new(params[:meas_initial])

    respond_to do |format|
      if @meas_initial.save
        format.html { redirect_to @meas_initial, notice: 'Meas initial was successfully created.' }
        format.json { render json: @meas_initial, status: :created, location: @meas_initial }
      else
        format.html { render action: "new" }
        format.json { render json: @meas_initial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meas_initials/1
  # PUT /meas_initials/1.json
  def update
    @meas_initial = MeasInitial.find(params[:id])

    respond_to do |format|
      if @meas_initial.update_attributes(params[:meas_initial])
        format.html { redirect_to @meas_initial, notice: 'Meas initial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meas_initial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meas_initials/1
  # DELETE /meas_initials/1.json
  def destroy
    @meas_initial = MeasInitial.find(params[:id])
    @meas_initial.destroy

    respond_to do |format|
      format.html { redirect_to meas_initials_url }
      format.json { head :no_content }
    end
  end
end
