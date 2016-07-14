class GermanUnitsController < ApplicationController
  before_action :set_german_unit, only: [:show, :edit, :update, :destroy]

  # GET /german_units
  # GET /german_units.json
  def index
    @german_units = GermanUnit.all
  end

  # GET /german_units/1
  # GET /german_units/1.json
  def show
  end

  # GET /german_units/new
  def new
    @german_unit = GermanUnit.new
  end

  # GET /german_units/1/edit
  def edit
  end

  # POST /german_units
  # POST /german_units.json
  def create
    @german_unit = GermanUnit.new(german_unit_params)

    respond_to do |format|
      if @german_unit.save
        format.html { redirect_to @german_unit, notice: 'German unit was successfully created.' }
        format.json { render :show, status: :created, location: @german_unit }
      else
        format.html { render :new }
        format.json { render json: @german_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /german_units/1
  # PATCH/PUT /german_units/1.json
  def update
    respond_to do |format|
      if @german_unit.update(german_unit_params)
        format.html { redirect_to @german_unit, notice: 'German unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @german_unit }
      else
        format.html { render :edit }
        format.json { render json: @german_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /german_units/1
  # DELETE /german_units/1.json
  def destroy
    @german_unit.destroy
    respond_to do |format|
      format.html { redirect_to german_units_url, notice: 'German unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_german_unit
      @german_unit = GermanUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def german_unit_params
      params.require(:german_unit).permit(:name, :designation, :description, :content)
    end
end
