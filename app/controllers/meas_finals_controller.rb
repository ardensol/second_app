class MeasFinalsController < ApplicationController
  # GET /meas_finals
  # GET /meas_finals.json
  def index
    @meas_finals = MeasFinal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meas_finals }
    end
  end

  # GET /meas_finals/1
  # GET /meas_finals/1.json
  def show
    @meas_final = MeasFinal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meas_final }
    end
  end

  # GET /meas_finals/new
  # GET /meas_finals/new.json
  def new
    @meas_final = MeasFinal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meas_final }
    end
  end

  # GET /meas_finals/1/edit
  def edit
    @meas_final = MeasFinal.find(params[:id])
  end

  # POST /meas_finals
  # POST /meas_finals.json
  def create
    @meas_final = MeasFinal.new(params[:meas_final])

    respond_to do |format|
      if @meas_final.save
        format.html { redirect_to @meas_final, notice: 'Meas final was successfully created.' }
        format.json { render json: @meas_final, status: :created, location: @meas_final }
      else
        format.html { render action: "new" }
        format.json { render json: @meas_final.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meas_finals/1
  # PUT /meas_finals/1.json
  def update
    @meas_final = MeasFinal.find(params[:id])

    respond_to do |format|
      if @meas_final.update_attributes(params[:meas_final])
        format.html { redirect_to @meas_final, notice: 'Meas final was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meas_final.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meas_finals/1
  # DELETE /meas_finals/1.json
  def destroy
    @meas_final = MeasFinal.find(params[:id])
    @meas_final.destroy

    respond_to do |format|
      format.html { redirect_to meas_finals_url }
      format.json { head :no_content }
    end
  end
end
