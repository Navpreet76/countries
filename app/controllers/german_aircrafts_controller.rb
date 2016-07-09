class GermanAircraftsController < ApplicationController
  before_action :set_german_aircraft, only: [:show, :edit, :update, :destroy]

  # GET /german_aircrafts
  # GET /german_aircrafts.json
  def index
    @german_aircrafts = GermanAircraft.all
  end

  # GET /german_aircrafts/1
  # GET /german_aircrafts/1.json
  def show
  end

  # GET /german_aircrafts/new
  def new
    @german_aircraft = GermanAircraft.new
  end

  # GET /german_aircrafts/1/edit
  def edit
  end

  # POST /german_aircrafts
  # POST /german_aircrafts.json
  def create
    @german_aircraft = GermanAircraft.new(german_aircraft_params)

    respond_to do |format|
      if @german_aircraft.save
        format.html { redirect_to @german_aircraft, notice: 'German aircraft was successfully created.' }
        format.json { render :show, status: :created, location: @german_aircraft }
      else
        format.html { render :new }
        format.json { render json: @german_aircraft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /german_aircrafts/1
  # PATCH/PUT /german_aircrafts/1.json
  def update
    respond_to do |format|
      if @german_aircraft.update(german_aircraft_params)
        format.html { redirect_to @german_aircraft, notice: 'German aircraft was successfully updated.' }
        format.json { render :show, status: :ok, location: @german_aircraft }
      else
        format.html { render :edit }
        format.json { render json: @german_aircraft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /german_aircrafts/1
  # DELETE /german_aircrafts/1.json
  def destroy
    @german_aircraft.destroy
    respond_to do |format|
      format.html { redirect_to german_aircrafts_url, notice: 'German aircraft was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_german_aircraft
      @german_aircraft = GermanAircraft.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def german_aircraft_params
      params.require(:german_aircraft).permit(:name, :designation, :description, :content)
    end
end
