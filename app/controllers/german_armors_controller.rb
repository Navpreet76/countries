class GermanArmorsController < ApplicationController
  before_action :set_german_armor, only: [:show, :edit, :update, :destroy]

  # GET /german_armors
  # GET /german_armors.json
  def index
    @german_armors = GermanArmor.all
  end

  # GET /german_armors/1
  # GET /german_armors/1.json
  def show
  end

  # GET /german_armors/new
  def new
    @german_armor = GermanArmor.new
  end

  # GET /german_armors/1/edit
  def edit
  end

  # POST /german_armors
  # POST /german_armors.json
  def create
    @german_armor = GermanArmor.new(german_armor_params)

    respond_to do |format|
      if @german_armor.save
        format.html { redirect_to @german_armor, notice: 'German armor was successfully created.' }
        format.json { render :show, status: :created, location: @german_armor }
      else
        format.html { render :new }
        format.json { render json: @german_armor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /german_armors/1
  # PATCH/PUT /german_armors/1.json
  def update
    respond_to do |format|
      if @german_armor.update(german_armor_params)
        format.html { redirect_to @german_armor, notice: 'German armor was successfully updated.' }
        format.json { render :show, status: :ok, location: @german_armor }
      else
        format.html { render :edit }
        format.json { render json: @german_armor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /german_armors/1
  # DELETE /german_armors/1.json
  def destroy
    @german_armor.destroy
    respond_to do |format|
      format.html { redirect_to german_armors_url, notice: 'German armor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_german_armor
      @german_armor = GermanArmor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def german_armor_params
      params.require(:german_armor).permit(:name, :designation, :numbers_built, :description)
    end
end
