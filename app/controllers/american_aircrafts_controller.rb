class AmericanAircraftsController < ApplicationController
  before_action :set_american_aircraft, only: [:show, :edit, :update, :destroy]

  # GET /american_aircrafts
  # GET /american_aircrafts.json
  def index
    @american_aircrafts = AmericanAircraft.all
  end

  # GET /american_aircrafts/1
  # GET /american_aircrafts/1.json
  def show
  end

  # GET /american_aircrafts/new
  def new
    @american_aircraft = AmericanAircraft.new
  end

  # GET /american_aircrafts/1/edit
  def edit
  end

  # POST /american_aircrafts
  # POST /american_aircrafts.json
  def create
    @american_aircraft = AmericanAircraft.new(american_aircraft_params)

    respond_to do |format|
      if @american_aircraft.save
        format.html { redirect_to @american_aircraft, notice: 'American aircraft was successfully created.' }
        format.json { render :show, status: :created, location: @american_aircraft }
      else
        format.html { render :new }
        format.json { render json: @american_aircraft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /american_aircrafts/1
  # PATCH/PUT /american_aircrafts/1.json
  def update
    respond_to do |format|
      if @american_aircraft.update(american_aircraft_params)
        format.html { redirect_to @american_aircraft, notice: 'American aircraft was successfully updated.' }
        format.json { render :show, status: :ok, location: @american_aircraft }
      else
        format.html { render :edit }
        format.json { render json: @american_aircraft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /american_aircrafts/1
  # DELETE /american_aircrafts/1.json
  def destroy
    @american_aircraft.destroy
    respond_to do |format|
      format.html { redirect_to american_aircrafts_url, notice: 'American aircraft was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_american_aircraft
      @american_aircraft = AmericanAircraft.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def american_aircraft_params
      params.require(:american_aircraft).permit(:name, :designation, :description, :content)
    end
end
