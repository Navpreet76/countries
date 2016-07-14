class AmericanArmorsController < ApplicationController
  before_action :set_american_armor, only: [:show, :edit, :update, :destroy]

  # GET /american_armors
  # GET /american_armors.json
  def index
    @american_armors = AmericanArmor.all
  end

  # GET /american_armors/1
  # GET /american_armors/1.json
  def show
  end

  # GET /american_armors/new
  def new
    @american_armor = AmericanArmor.new
  end

  # GET /american_armors/1/edit
  def edit
  end

  # POST /american_armors
  # POST /american_armors.json
  def create
    @american_armor = AmericanArmor.new(american_armor_params)

    respond_to do |format|
      if @american_armor.save
        format.html { redirect_to @american_armor, notice: 'American armor was successfully created.' }
        format.json { render :show, status: :created, location: @american_armor }
      else
        format.html { render :new }
        format.json { render json: @american_armor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /american_armors/1
  # PATCH/PUT /american_armors/1.json
  def update
    respond_to do |format|
      if @american_armor.update(american_armor_params)
        format.html { redirect_to @american_armor, notice: 'American armor was successfully updated.' }
        format.json { render :show, status: :ok, location: @american_armor }
      else
        format.html { render :edit }
        format.json { render json: @american_armor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /american_armors/1
  # DELETE /american_armors/1.json
  def destroy
    @american_armor.destroy
    respond_to do |format|
      format.html { redirect_to american_armors_url, notice: 'American armor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_american_armor
      @american_armor = AmericanArmor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def american_armor_params
      params.require(:american_armor).permit(:name, :designation, :numbers_built, :description, :content)
    end
end
